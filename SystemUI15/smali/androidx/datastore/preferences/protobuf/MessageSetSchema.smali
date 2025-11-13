.class public final Landroidx/datastore/preferences/protobuf/MessageSetSchema;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/Schema;


# instance fields
.field public final defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

.field public final extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

.field public final hasExtensions:Z

.field public final unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;


# direct methods
.method private constructor <init>(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;",
            "Landroidx/datastore/preferences/protobuf/ExtensionSchema;",
            "Landroidx/datastore/preferences/protobuf/MessageLite;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/MessageSetSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    invoke-virtual {p2, p3}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->hasExtensions(Landroidx/datastore/preferences/protobuf/MessageLite;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/MessageSetSchema;->hasExtensions:Z

    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/MessageSetSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    iput-object p3, p0, Landroidx/datastore/preferences/protobuf/MessageSetSchema;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    return-void
.end method

.method public static newSchema(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MessageLite;)Landroidx/datastore/preferences/protobuf/MessageSetSchema;
    .locals 1

    new-instance v0, Landroidx/datastore/preferences/protobuf/MessageSetSchema;

    invoke-direct {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSetSchema;-><init>(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MessageLite;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSetSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v1

    invoke-virtual {v0, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSetSchema;->hasExtensions:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSetSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/datastore/preferences/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final getSerializedSize(Ljava/lang/Object;)I
    .locals 4

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSetSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getSerializedSizeAsMessageSet(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/MessageSetSchema;->hasExtensions:Z

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSetSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object p0

    const/4 p1, 0x0

    move v1, p1

    :goto_0
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/FieldSet;->fields:Landroidx/datastore/preferences/protobuf/SmallSortedMap;

    iget-object v3, v2, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    invoke-virtual {v2, p1}, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/FieldSet;->getMessageSetSerializedSize(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/FieldSet;->getMessageSetSerializedSize(Ljava/util/Map$Entry;)I

    move-result p1

    add-int/2addr v1, p1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final hashCode(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSetSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/MessageSetSchema;->hasExtensions:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSetSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object p0

    mul-int/lit8 v0, v0, 0x35

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/FieldSet;->fields:Landroidx/datastore/preferences/protobuf/SmallSortedMap;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSetSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldSet;->isInitialized()Z

    move-result p0

    return p0
.end method

.method public final makeImmutable(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSetSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->makeImmutable(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSetSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->makeImmutable(Ljava/lang/Object;)V

    return-void
.end method

.method public final mergeFrom(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 11

    iget-object v7, p0, Landroidx/datastore/preferences/protobuf/MessageSetSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    invoke-virtual {v7, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v8

    iget-object v9, p0, Landroidx/datastore/preferences/protobuf/MessageSetSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {v9, p1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->getMutableExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object v10

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->getFieldNumber()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {v7, p1, v8}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, v9

    move-object v4, v10

    move-object v5, v7

    move-object v6, v8

    :try_start_1
    invoke-virtual/range {v0 .. v6}, Landroidx/datastore/preferences/protobuf/MessageSetSchema;->parseMessageSetItemOrUnknownField(Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/FieldSet;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v7, p1, v8}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    throw p0
.end method

.method public final mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Landroidx/datastore/preferences/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSetSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v1

    invoke-virtual {v0, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->merge(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSetSchema;->hasExtensions:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSetSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->mergeExtensions(Landroidx/datastore/preferences/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final newInstance()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;
    .locals 1

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSetSchema;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    instance-of v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->newMutableInstance$1()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->dynamicMethod(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->buildPartial()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public final parseMessageSetItemOrUnknownField(Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/FieldSet;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Z
    .locals 7

    iget v0, p1, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    const/16 v1, 0xb

    const/4 v2, 0x1

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSetSchema;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    if-eq v0, v1, :cond_2

    and-int/lit8 v1, v0, 0x7

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    ushr-int/lit8 v0, v0, 0x3

    invoke-virtual {p3, p2, p0, v0}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->findExtensionByNumber(Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/MessageLite;I)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p3, p1, p0, p2, p4}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->parseLengthPrefixedMessageSetItem(Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/FieldSet;)V

    return v2

    :cond_0
    invoke-virtual {p5, p6, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->skipField()Z

    move-result p0

    return p0

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v4, v0

    move-object v3, v1

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->getFieldNumber()I

    move-result v5

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_4

    goto :goto_1

    :cond_4
    iget v5, p1, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    const/16 v6, 0x10

    if-ne v5, v6, :cond_5

    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v1, p1, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    invoke-virtual {p3, p2, p0, v4}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->findExtensionByNumber(Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/MessageLite;I)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v1

    goto :goto_0

    :cond_5
    const/16 v6, 0x1a

    if-ne v5, v6, :cond_7

    if-eqz v1, :cond_6

    invoke-virtual {p3, p1, v1, p2, p4}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->parseLengthPrefixedMessageSetItem(Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/FieldSet;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v3

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->skipField()Z

    move-result v5

    if-nez v5, :cond_3

    :goto_1
    iget p0, p1, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    const/16 p1, 0xc

    if-ne p0, p1, :cond_a

    if-eqz v3, :cond_9

    if-eqz v1, :cond_8

    invoke-virtual {p3, v3, v1, p2, p4}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->parseMessageSetItem(Landroidx/datastore/preferences/protobuf/ByteString;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/FieldSet;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p5, p6, v4, v3}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->addLengthDelimited(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/ByteString;)V

    :cond_9
    :goto_2
    return v2

    :cond_a
    new-instance p0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    const-string p1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeTo(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;)V
    .locals 5

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSetSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v3, v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->getJavaType()Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

    move-result-object v3

    sget-object v4, Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;->MESSAGE:Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

    if-ne v3, v4, :cond_1

    iget-boolean v3, v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    if-nez v3, :cond_1

    instance-of v3, v1, Landroidx/datastore/preferences/protobuf/LazyField$LazyEntry;

    if-eqz v3, :cond_0

    iget v2, v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    check-cast v1, Landroidx/datastore/preferences/protobuf/LazyField$LazyEntry;

    iget-object v1, v1, Landroidx/datastore/preferences/protobuf/LazyField$LazyEntry;->entry:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/LazyField;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->toByteString()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeMessageSetItem(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget v2, v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeMessageSetItem(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Found invalid MessageSet item."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSetSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->writeAsMessageSetTo(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;)V

    return-void
.end method
