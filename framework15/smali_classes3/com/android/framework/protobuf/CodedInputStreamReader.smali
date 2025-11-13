.class final Lcom/android/framework/protobuf/CodedInputStreamReader;
.super Ljava/lang/Object;
.source "CodedInputStreamReader.java"

# interfaces
.implements Lcom/android/framework/protobuf/Reader;


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation


# static fields
.field private static final blacklist FIXED32_MULTIPLE_MASK:I = 0x3

.field private static final blacklist FIXED64_MULTIPLE_MASK:I = 0x7

.field private static final blacklist NEXT_TAG_UNSET:I


# instance fields
.field private blacklist endGroupTag:I

.field private final blacklist input:Lcom/android/framework/protobuf/CodedInputStream;

.field private blacklist nextTag:I

.field private blacklist tag:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/framework/protobuf/CodedInputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    const-string/jumbo v0, "input"

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/CodedInputStream;

    iput-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    iput-object p0, v0, Lcom/android/framework/protobuf/CodedInputStream;->wrapper:Lcom/android/framework/protobuf/CodedInputStreamReader;

    return-void
.end method

.method public static blacklist forCodedInput(Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/CodedInputStreamReader;
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream;->wrapper:Lcom/android/framework/protobuf/CodedInputStreamReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream;->wrapper:Lcom/android/framework/protobuf/CodedInputStreamReader;

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/framework/protobuf/CodedInputStreamReader;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;-><init>(Lcom/android/framework/protobuf/CodedInputStream;)V

    return-object v0
.end method

.method private blacklist mergeGroupFieldInternal(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->endGroupTag:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->endGroupTag:I

    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->endGroupTag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->endGroupTag:I

    nop

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->endGroupTag:I

    throw v1
.end method

.method private blacklist mergeMessageFieldInternal(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    iget v1, v1, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    iget v2, v2, Lcom/android/framework/protobuf/CodedInputStream;->recursionLimit:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    iget v3, v2, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    invoke-interface {p2, p1, p0, p3}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/CodedInputStream;->checkLastTagWas(I)V

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    iget v3, v2, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2, v1}, Lcom/android/framework/protobuf/CodedInputStream;->popLimit(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method private blacklist readField(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/framework/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unsupported field type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readMessage(Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_9
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_b
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_c
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_e
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_f
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :pswitch_10
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    nop

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

.method private blacklist readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->mergeGroupFieldInternal(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p1, v0}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    return-object v0
.end method

.method private blacklist readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->mergeMessageFieldInternal(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p1, v0}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    return-object v0
.end method

.method private blacklist requirePosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist requireWireType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method private blacklist verifyPackedFixed32Length(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist verifyPackedFixed64Length(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public blacklist getFieldNumber()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    :goto_0
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->endGroupTag:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public blacklist getTag()I
    .locals 1

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    return v0
.end method

.method public blacklist mergeGroupField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedInputStreamReader;->mergeGroupFieldInternal(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public blacklist mergeMessageField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedInputStreamReader;->mergeMessageFieldInternal(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public blacklist readBool()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    return v0
.end method

.method public blacklist readBoolList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/BooleanArrayList;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/BooleanArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(Z)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_0

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    goto :goto_1

    :goto_0
    :pswitch_2
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(Z)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_2

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_2
    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_4
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_4

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    :goto_1
    return-void

    :goto_2
    :pswitch_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_6
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public blacklist readBytes()Lcom/android/framework/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readBytesList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :goto_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_1
    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readDoubleList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/DoubleArrayList;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/DoubleArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(D)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_0

    nop

    goto :goto_1

    :goto_0
    :pswitch_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(D)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_2

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_2
    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_4

    nop

    :goto_1
    return-void

    :goto_2
    :pswitch_3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_6
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public blacklist readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    return v0
.end method

.method public blacklist readEnumList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_0

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    goto :goto_1

    :goto_0
    :pswitch_2
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readEnum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_2

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_2
    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_4
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_4

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    :goto_1
    return-void

    :goto_2
    :pswitch_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_6
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public blacklist readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    return v0
.end method

.method public blacklist readFixed32List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :goto_0
    :sswitch_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_1
    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    :cond_2
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_2

    nop

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :goto_1
    :sswitch_2
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_5
    goto :goto_1

    :sswitch_3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_6

    nop

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method public blacklist readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readFixed64List(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_0

    nop

    goto :goto_1

    :goto_0
    :pswitch_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_2

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_2
    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_4

    nop

    :goto_1
    return-void

    :goto_2
    :pswitch_3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_6
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public blacklist readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    return v0
.end method

.method public blacklist readFloatList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/FloatArrayList;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/FloatArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :goto_0
    :sswitch_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(F)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_1
    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    :cond_2
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readFloat()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(F)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_2

    nop

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :goto_1
    :sswitch_2
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_5
    goto :goto_1

    :sswitch_3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_6

    nop

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method public blacklist readGroup(Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readGroupBySchemaWithCheck(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readGroupList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    if-eq v1, v0, :cond_1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readGroupList(Ljava/util/List;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readGroupList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public blacklist readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    return v0
.end method

.method public blacklist readInt32List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_0

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    goto :goto_1

    :goto_0
    :pswitch_2
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_2

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_2
    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_4
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_4

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    :goto_1
    return-void

    :goto_2
    :pswitch_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_6
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public blacklist readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readInt64List(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_0

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    goto :goto_1

    :goto_0
    :pswitch_2
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_2

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_2
    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_4
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_4

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    :goto_1
    return-void

    :goto_2
    :pswitch_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_6
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public blacklist readMap(Ljava/util/Map;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    iget-object v2, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    iget-object v3, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->getFieldNumber()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_3

    iget-object v5, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v5}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    goto :goto_5

    :cond_0
    const-string v5, "Unable to parse map entry."

    packed-switch v4, :pswitch_data_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->skipField()Z

    move-result v6

    goto :goto_1

    :pswitch_0
    iget-object v6, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    iget-object v7, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {p0, v6, v7, p3}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readField(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    goto :goto_2

    :pswitch_1
    iget-object v6, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7, v7}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readField(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    goto :goto_2

    :catch_0
    move-exception v6

    goto :goto_3

    :goto_1
    if-eqz v6, :cond_1

    :goto_2
    goto :goto_4

    :cond_1
    new-instance v6, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {v6, v5}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    :try_start_2
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->skipField()Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_4
    goto :goto_0

    :cond_2
    new-instance v7, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {v7, v5}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    :goto_5
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v4, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v4, v1}, Lcom/android/framework/protobuf/CodedInputStream;->popLimit(I)V

    nop

    return-void

    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v5, v1}, Lcom/android/framework/protobuf/CodedInputStream;->popLimit(I)V

    throw v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist readMessage(Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readMessageBySchemaWithCheck(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readMessageList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    if-eq v1, v0, :cond_1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readMessageList(Ljava/util/List;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readMessageList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public blacklist readSFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed32()I

    move-result v0

    return v0
.end method

.method public blacklist readSFixed32List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :goto_0
    :sswitch_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_1
    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    :cond_2
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_2

    nop

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :goto_1
    :sswitch_2
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_5
    goto :goto_1

    :sswitch_3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_6

    nop

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method public blacklist readSFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readSFixed64List(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_0

    nop

    goto :goto_1

    :goto_0
    :pswitch_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_2

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_2
    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_4

    nop

    :goto_1
    return-void

    :goto_2
    :pswitch_3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_6
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public blacklist readSInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    return v0
.end method

.method public blacklist readSInt32List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_0

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    goto :goto_1

    :goto_0
    :pswitch_2
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_2

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_2
    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_4
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_4

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    :goto_1
    return-void

    :goto_2
    :pswitch_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_6
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public blacklist readSInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readSInt64List(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_0

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    goto :goto_1

    :goto_0
    :pswitch_2
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_2

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_2
    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_4
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_4

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    :goto_1
    return-void

    :goto_2
    :pswitch_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_6
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public blacklist readString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readStringList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readStringListInternal(Ljava/util/List;Z)V

    return-void
.end method

.method public blacklist readStringListInternal(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    instance-of v0, p1, Lcom/android/framework/protobuf/LazyStringList;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LazyStringList;

    :goto_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/LazyStringList;->add(Lcom/android/framework/protobuf/ByteString;)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_5
    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readStringListRequireUtf8(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readStringListInternal(Ljava/util/List;Z)V

    return-void
.end method

.method public blacklist readStringRequireUtf8()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    return v0
.end method

.method public blacklist readUInt32List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_0

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    goto :goto_1

    :goto_0
    :pswitch_2
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_2

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_2
    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_4
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_4

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    :goto_1
    return-void

    :goto_2
    :pswitch_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_6
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public blacklist readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readUInt64List(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_0

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    goto :goto_1

    :goto_0
    :pswitch_2
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_2

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_2
    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_4
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_4

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    :goto_1
    return-void

    :goto_2
    :pswitch_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_6
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public blacklist shouldDiscardUnknownFields()Z
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->shouldDiscardUnknownFields()Z

    move-result v0

    return v0
.end method

.method public blacklist skipField()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->endGroupTag:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream;->skipField(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
