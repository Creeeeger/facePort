.class public final Lcom/google/protobuf/CodedInputStreamReader;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public endGroupTag:I

.field public final input:Lcom/google/protobuf/CodedInputStream;

.field public nextTag:I

.field public tag:I


# direct methods
.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    iput-object p0, p1, Lcom/google/protobuf/CodedInputStream;->wrapper:Lcom/google/protobuf/CodedInputStreamReader;

    return-void
.end method

.method public static forCodedInput(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/CodedInputStreamReader;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream;->wrapper:Lcom/google/protobuf/CodedInputStreamReader;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/protobuf/CodedInputStreamReader;

    invoke-direct {v0, p0}, Lcom/google/protobuf/CodedInputStreamReader;-><init>(Lcom/google/protobuf/CodedInputStream;)V

    return-object v0
.end method

.method public static verifyPackedFixed32Length(I)V
    .locals 0

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static verifyPackedFixed64Length(I)V
    .locals 0

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final getFieldNumber()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    :goto_0
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/google/protobuf/CodedInputStreamReader;->endGroupTag:I

    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 p0, v0, 0x3

    return p0

    :cond_2
    :goto_1
    const p0, 0x7fffffff

    return p0
.end method

.method public final mergeGroupFieldInternal(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->endGroupTag:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->endGroupTag:I

    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/CodedInputStreamReader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    iget p2, p0, Lcom/google/protobuf/CodedInputStreamReader;->endGroupTag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->endGroupTag:I

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->endGroupTag:I

    throw p1
.end method

.method public final mergeMessageFieldInternal(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 4

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    iget v2, v0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    iget v3, v0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    iget v2, v0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-interface {p2, p1, p0, p3}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/CodedInputStreamReader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    iget p0, v0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p0, p0, -0x1

    iput p0, v0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-virtual {v0, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    return-void

    :cond_0
    new-instance p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p0, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readBoolList(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Lcom/google/protobuf/BooleanArrayList;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/BooleanArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public final readBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object p0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public final readBytesList(Ljava/util/List;)V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final readDoubleList(Ljava/util/List;)V
    .locals 4

    instance-of v0, p1, Lcom/google/protobuf/DoubleArrayList;

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/DoubleArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    add-int/2addr p1, p0

    :cond_0
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p0

    if-lt p0, p1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    add-int/2addr v0, p0

    :cond_5
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p0

    if-lt p0, v0, :cond_5

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public final readEnumList(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public final readField(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lcom/google/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedInputStreamReader;->readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readFixed32List(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    add-int v4, p1, p0

    :cond_4
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p0

    if-lt p0, v4, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_9
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    add-int/2addr v0, p0

    :cond_a
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p0

    if-lt p0, v0, :cond_a

    :goto_0
    return-void
.end method

.method public final readFixed64List(Ljava/util/List;)V
    .locals 4

    instance-of v0, p1, Lcom/google/protobuf/LongArrayList;

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    add-int/2addr p1, p0

    :cond_0
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p0

    if-lt p0, p1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    add-int/2addr v0, p0

    :cond_5
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p0

    if-lt p0, v0, :cond_5

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public final readFloatList(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Lcom/google/protobuf/FloatArrayList;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/FloatArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    add-int v4, p1, p0

    :cond_4
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p0

    if-lt p0, v4, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_9
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    add-int/2addr v0, p0

    :cond_a
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p0

    if-lt p0, v0, :cond_a

    :goto_0
    return-void
.end method

.method public final readInt32List(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public final readInt64List(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Lcom/google/protobuf/LongArrayList;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public final readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    sget-object v0, Lcom/google/protobuf/Protobuf;->INSTANCE:Lcom/google/protobuf/Protobuf;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/CodedInputStreamReader;->mergeMessageFieldInternal(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p1, v0}, Lcom/google/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final readSFixed32List(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    add-int v4, p1, p0

    :cond_4
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p0

    if-lt p0, v4, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_9
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    add-int/2addr v0, p0

    :cond_a
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p0

    if-lt p0, v0, :cond_a

    :goto_0
    return-void
.end method

.method public final readSFixed64List(Ljava/util/List;)V
    .locals 4

    instance-of v0, p1, Lcom/google/protobuf/LongArrayList;

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    add-int/2addr p1, p0

    :cond_0
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p0

    if-lt p0, p1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    add-int/2addr v0, p0

    :cond_5
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p0

    if-lt p0, v0, :cond_5

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public final readSInt32List(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public final readSInt64List(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Lcom/google/protobuf/LongArrayList;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public final readStringListInternal(Ljava/util/List;Z)V
    .locals 4

    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    instance-of v0, p1, Lcom/google/protobuf/LazyStringList;

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LazyStringList;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget p2, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, p2, :cond_0

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v3, :cond_2

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final readUInt32List(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public final readUInt64List(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Lcom/google/protobuf/LongArrayList;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public final requirePosition(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p0

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final requireWireType(I)V
    .locals 0

    iget p0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 p0, p0, 0x7

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final skipField()Z
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    iget p0, p0, Lcom/google/protobuf/CodedInputStreamReader;->endGroupTag:I

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
