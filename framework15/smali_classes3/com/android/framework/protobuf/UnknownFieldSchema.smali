.class abstract Lcom/android/framework/protobuf/UnknownFieldSchema;
.super Ljava/lang/Object;
.source "UnknownFieldSchema.java"


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract blacklist addFixed32(Ljava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;II)V"
        }
    .end annotation
.end method

.method abstract blacklist addFixed64(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method abstract blacklist addGroup(Ljava/lang/Object;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;ITT;)V"
        }
    .end annotation
.end method

.method abstract blacklist addLengthDelimited(Ljava/lang/Object;ILcom/android/framework/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;I",
            "Lcom/android/framework/protobuf/ByteString;",
            ")V"
        }
    .end annotation
.end method

.method abstract blacklist addVarint(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method abstract blacklist getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TB;"
        }
    .end annotation
.end method

.method abstract blacklist getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method abstract blacklist getSerializedSize(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract blacklist getSerializedSizeAsMessageSet(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract blacklist makeImmutable(Ljava/lang/Object;)V
.end method

.method abstract blacklist merge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation
.end method

.method final blacklist mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lcom/android/framework/protobuf/Reader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    nop

    :cond_0
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->getFieldNumber()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;)Z

    move-result v0

    if-nez v0, :cond_0

    nop

    :cond_1
    return-void
.end method

.method final blacklist mergeOneFieldFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lcom/android/framework/protobuf/Reader;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->getTag()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v2

    throw v2

    :pswitch_0
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->readFixed32()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->addFixed32(Ljava/lang/Object;II)V

    return v3

    :pswitch_1
    const/4 v2, 0x0

    return v2

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/framework/protobuf/UnknownFieldSchema;->newBuilder()Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v1, v4}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v4

    invoke-virtual {p0, v2, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;)V

    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->getTag()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, p1, v1, v5}, Lcom/android/framework/protobuf/UnknownFieldSchema;->addGroup(Ljava/lang/Object;ILjava/lang/Object;)V

    return v3

    :cond_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    :pswitch_3
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->addLengthDelimited(Ljava/lang/Object;ILcom/android/framework/protobuf/ByteString;)V

    return v3

    :pswitch_4
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->readFixed64()J

    move-result-wide v4

    invoke-virtual {p0, p1, v1, v4, v5}, Lcom/android/framework/protobuf/UnknownFieldSchema;->addFixed64(Ljava/lang/Object;IJ)V

    return v3

    :pswitch_5
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->readInt64()J

    move-result-wide v4

    invoke-virtual {p0, p1, v1, v4, v5}, Lcom/android/framework/protobuf/UnknownFieldSchema;->addVarint(Ljava/lang/Object;IJ)V

    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method abstract blacklist newBuilder()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method abstract blacklist setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TB;)V"
        }
    .end annotation
.end method

.method abstract blacklist setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation
.end method

.method abstract blacklist shouldDiscardUnknownFields(Lcom/android/framework/protobuf/Reader;)Z
.end method

.method abstract blacklist toImmutable(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TT;"
        }
    .end annotation
.end method

.method abstract blacklist writeAsMessageSetTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
