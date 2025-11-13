.class Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;
.super Lcom/android/framework/protobuf/UnknownFieldSchema;
.source "UnknownFieldSetLiteSchema.java"


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/UnknownFieldSchema<",
        "Lcom/android/framework/protobuf/UnknownFieldSetLite;",
        "Lcom/android/framework/protobuf/UnknownFieldSetLite;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/UnknownFieldSchema;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist addFixed32(Lcom/android/framework/protobuf/UnknownFieldSetLite;II)V
    .locals 2

    const/4 v0, 0x5

    invoke-static {p2, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return-void
.end method

.method bridge synthetic blacklist addFixed32(Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    check-cast p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->addFixed32(Lcom/android/framework/protobuf/UnknownFieldSetLite;II)V

    return-void
.end method

.method blacklist addFixed64(Lcom/android/framework/protobuf/UnknownFieldSetLite;IJ)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return-void
.end method

.method bridge synthetic blacklist addFixed64(Ljava/lang/Object;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    check-cast p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->addFixed64(Lcom/android/framework/protobuf/UnknownFieldSetLite;IJ)V

    return-void
.end method

.method blacklist addGroup(Lcom/android/framework/protobuf/UnknownFieldSetLite;ILcom/android/framework/protobuf/UnknownFieldSetLite;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p2, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return-void
.end method

.method bridge synthetic blacklist addGroup(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    check-cast p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    check-cast p3, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->addGroup(Lcom/android/framework/protobuf/UnknownFieldSetLite;ILcom/android/framework/protobuf/UnknownFieldSetLite;)V

    return-void
.end method

.method blacklist addLengthDelimited(Lcom/android/framework/protobuf/UnknownFieldSetLite;ILcom/android/framework/protobuf/ByteString;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return-void
.end method

.method bridge synthetic blacklist addLengthDelimited(Ljava/lang/Object;ILcom/android/framework/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    check-cast p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->addLengthDelimited(Lcom/android/framework/protobuf/UnknownFieldSetLite;ILcom/android/framework/protobuf/ByteString;)V

    return-void
.end method

.method blacklist addVarint(Lcom/android/framework/protobuf/UnknownFieldSetLite;IJ)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return-void
.end method

.method bridge synthetic blacklist addVarint(Ljava/lang/Object;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    check-cast p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->addVarint(Lcom/android/framework/protobuf/UnknownFieldSetLite;IJ)V

    return-void
.end method

.method blacklist getBuilderFromMessage(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->getFromMessage(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->newInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->setToMessage(Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSetLite;)V

    :cond_0
    return-object v0
.end method

.method bridge synthetic blacklist getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->getBuilderFromMessage(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object p1

    return-object p1
.end method

.method blacklist getFromMessage(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    iget-object v0, v0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    return-object v0
.end method

.method bridge synthetic blacklist getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->getFromMessage(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object p1

    return-object p1
.end method

.method blacklist getSerializedSize(Lcom/android/framework/protobuf/UnknownFieldSetLite;)I
    .locals 1

    invoke-virtual {p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method bridge synthetic blacklist getSerializedSize(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->getSerializedSize(Lcom/android/framework/protobuf/UnknownFieldSetLite;)I

    move-result p1

    return p1
.end method

.method blacklist getSerializedSizeAsMessageSet(Lcom/android/framework/protobuf/UnknownFieldSetLite;)I
    .locals 1

    invoke-virtual {p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getSerializedSizeAsMessageSet()I

    move-result v0

    return v0
.end method

.method bridge synthetic blacklist getSerializedSizeAsMessageSet(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->getSerializedSizeAsMessageSet(Lcom/android/framework/protobuf/UnknownFieldSetLite;)I

    move-result p1

    return p1
.end method

.method blacklist makeImmutable(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->getFromMessage(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->makeImmutable()V

    return-void
.end method

.method blacklist merge(Lcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/UnknownFieldSetLite;)Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .locals 1

    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->mutableCopyOf(Lcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/UnknownFieldSetLite;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->mergeFrom(Lcom/android/framework/protobuf/UnknownFieldSetLite;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist merge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    check-cast p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    check-cast p2, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->merge(Lcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/UnknownFieldSetLite;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object p1

    return-object p1
.end method

.method blacklist newBuilder()Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .locals 1

    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->newInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist newBuilder()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->newBuilder()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    return-object v0
.end method

.method blacklist setBuilderToMessage(Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSetLite;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->setToMessage(Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSetLite;)V

    return-void
.end method

.method bridge synthetic blacklist setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    check-cast p2, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->setBuilderToMessage(Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSetLite;)V

    return-void
.end method

.method blacklist setToMessage(Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSetLite;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    iput-object p2, v0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method bridge synthetic blacklist setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    check-cast p2, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->setToMessage(Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSetLite;)V

    return-void
.end method

.method blacklist shouldDiscardUnknownFields(Lcom/android/framework/protobuf/Reader;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method blacklist toImmutable(Lcom/android/framework/protobuf/UnknownFieldSetLite;)Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .locals 0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->makeImmutable()V

    return-object p1
.end method

.method bridge synthetic blacklist toImmutable(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->toImmutable(Lcom/android/framework/protobuf/UnknownFieldSetLite;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object p1

    return-object p1
.end method

.method blacklist writeAsMessageSetTo(Lcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->writeAsMessageSetTo(Lcom/android/framework/protobuf/Writer;)V

    return-void
.end method

.method bridge synthetic blacklist writeAsMessageSetTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->writeAsMessageSetTo(Lcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/Writer;)V

    return-void
.end method

.method blacklist writeTo(Lcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->writeTo(Lcom/android/framework/protobuf/Writer;)V

    return-void
.end method

.method bridge synthetic blacklist writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->writeTo(Lcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/Writer;)V

    return-void
.end method
