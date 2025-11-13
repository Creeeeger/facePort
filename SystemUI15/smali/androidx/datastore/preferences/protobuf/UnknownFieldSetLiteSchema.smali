.class public final Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;
.super Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;-><init>()V

    return-void
.end method


# virtual methods
.method public final addFixed32(IILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    shl-int/lit8 p0, p1, 0x3

    or-int/lit8 p0, p0, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return-void
.end method

.method public final addFixed64(IJLjava/lang/Object;)V
    .locals 0

    check-cast p4, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    shl-int/lit8 p0, p1, 0x3

    or-int/lit8 p0, p0, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return-void
.end method

.method public final addGroup(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    check-cast p3, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    shl-int/lit8 p0, p1, 0x3

    or-int/lit8 p0, p0, 0x3

    invoke-virtual {p2, p0, p3}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return-void
.end method

.method public final addLengthDelimited(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    shl-int/lit8 p0, p2, 0x3

    or-int/lit8 p0, p0, 0x2

    invoke-virtual {p1, p0, p3}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return-void
.end method

.method public final addVarint(IJLjava/lang/Object;)V
    .locals 0

    check-cast p4, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    shl-int/lit8 p0, p1, 0x3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return-void
.end method

.method public final getBuilderFromMessage(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;
    .locals 1

    check-cast p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    iget-object p0, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    sget-object v0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    if-ne p0, v0, :cond_0

    invoke-static {}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->newInstance()Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object p0

    iput-object p0, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    :cond_0
    return-object p0
.end method

.method public final getFromMessage(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    iget-object p0, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    return-object p0
.end method

.method public final getSerializedSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result p0

    return p0
.end method

.method public final getSerializedSizeAsMessageSet(Ljava/lang/Object;)I
    .locals 6

    check-cast p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    iget p0, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    move v0, p0

    :goto_0
    iget v1, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    if-ge p0, v1, :cond_1

    iget-object v1, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, p0

    const/4 v2, 0x3

    ushr-int/2addr v1, v2

    iget-object v3, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, p0

    check-cast v3, Landroidx/datastore/preferences/protobuf/ByteString;

    const/4 v4, 0x1

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    invoke-static {v5, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v2, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    iput v0, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    move p0, v0

    :goto_1
    return p0
.end method

.method public final makeImmutable(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    iget-object p0, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->isMutable:Z

    return-void
.end method

.method public final merge(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;
    .locals 5

    check-cast p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    check-cast p2, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    sget-object p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->mutableCopyOf(Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean p0, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->isMutable:Z

    if-eqz p0, :cond_3

    iget p0, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    iget v0, p2, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    add-int/2addr p0, v0

    invoke-virtual {p1, p0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->ensureCapacity(I)V

    iget-object v0, p2, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    iget-object v1, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    iget v2, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    iget v3, p2, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p2, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget-object v1, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget v2, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    iget p2, p2, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    invoke-static {v0, v4, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p0, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    :goto_0
    return-object p1

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final newBuilder()Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;
    .locals 0

    invoke-static {}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->newInstance()Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object p0

    return-object p0
.end method

.method public final setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    check-cast p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    iput-object p2, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method public final setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    check-cast p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    iput-object p2, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method public final toImmutable(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    const/4 p0, 0x0

    iput-boolean p0, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->isMutable:Z

    return-object p1
.end method

.method public final writeAsMessageSetTo(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;)V
    .locals 2

    check-cast p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;->ASCENDING:Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;

    sget-object v0, Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;->DESCENDING:Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;

    if-ne p0, v0, :cond_0

    iget p0, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_1

    iget-object v0, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    aget v0, v0, p0

    ushr-int/lit8 v0, v0, 0x3

    iget-object v1, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v1, v1, p0

    invoke-virtual {p2, v0, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeMessageSetItem(ILjava/lang/Object;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_1
    iget v0, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    if-ge p0, v0, :cond_1

    iget-object v0, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    aget v0, v0, p0

    ushr-int/lit8 v0, v0, 0x3

    iget-object v1, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v1, v1, p0

    invoke-virtual {p2, v0, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeMessageSetItem(ILjava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final writeTo(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;)V
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->writeTo(Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;)V

    return-void
.end method
