.class public final Landroidx/datastore/preferences/protobuf/ExtensionSchemaLite;
.super Landroidx/datastore/preferences/protobuf/ExtensionSchema;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;-><init>()V

    return-void
.end method


# virtual methods
.method public final extensionNumber(Ljava/util/Map$Entry;)I
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    return p0
.end method

.method public final findExtensionByNumber(Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/MessageLite;I)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 0

    iget-object p0, p1, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    new-instance p1, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite$ObjectIntPair;

    invoke-direct {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite$ObjectIntPair;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-object p0
.end method

.method public final getExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object p0, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroidx/datastore/preferences/protobuf/FieldSet;

    return-object p0
.end method

.method public final getMutableExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;
    .locals 1

    check-cast p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object p0, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroidx/datastore/preferences/protobuf/FieldSet;

    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/FieldSet;->isImmutable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldSet;->clone()Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object p0

    iput-object p0, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroidx/datastore/preferences/protobuf/FieldSet;

    :cond_0
    iget-object p0, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroidx/datastore/preferences/protobuf/FieldSet;

    return-object p0
.end method

.method public final hasExtensions(Landroidx/datastore/preferences/protobuf/MessageLite;)Z
    .locals 0

    instance-of p0, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;

    return p0
.end method

.method public final makeImmutable(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object p0, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroidx/datastore/preferences/protobuf/FieldSet;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldSet;->makeImmutable()V

    return-void
.end method

.method public final parseExtension(Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/FieldSet;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;

    iget-object p0, p2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    if-eqz v0, :cond_0

    sget-object p2, Landroidx/datastore/preferences/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Type cannot be packed: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readEnumList(Ljava/util/List;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/datastore/preferences/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    goto/16 :goto_0

    :pswitch_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readSInt64List(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readSInt32List(Ljava/util/List;)V

    goto :goto_0

    :pswitch_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readSFixed64List(Ljava/util/List;)V

    goto :goto_0

    :pswitch_4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readSFixed32List(Ljava/util/List;)V

    goto :goto_0

    :pswitch_5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readUInt32List(Ljava/util/List;)V

    goto :goto_0

    :pswitch_6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readBoolList(Ljava/util/List;)V

    goto :goto_0

    :pswitch_7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readFixed32List(Ljava/util/List;)V

    goto :goto_0

    :pswitch_8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readFixed64List(Ljava/util/List;)V

    goto :goto_0

    :pswitch_9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readInt32List(Ljava/util/List;)V

    goto :goto_0

    :pswitch_a
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readUInt64List(Ljava/util/List;)V

    goto :goto_0

    :pswitch_b
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readInt64List(Ljava/util/List;)V

    goto :goto_0

    :pswitch_c
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readFloatList(Ljava/util/List;)V

    goto :goto_0

    :pswitch_d
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readDoubleList(Ljava/util/List;)V

    :goto_0
    invoke-virtual {p4, p0, p2}, Landroidx/datastore/preferences/protobuf/FieldSet;->setField(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    sget-object v1, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->ENUM:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_b

    sget-object v1, Landroidx/datastore/preferences/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x1

    iget-object p2, p2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;->messageDefaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_e
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    if-nez v0, :cond_2

    invoke-virtual {p4, p0}, Landroidx/datastore/preferences/protobuf/FieldSet;->getField(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    if-eqz v2, :cond_2

    sget-object p2, Landroidx/datastore/preferences/protobuf/Protobuf;->INSTANCE:Landroidx/datastore/preferences/protobuf/Protobuf;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/datastore/preferences/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object p2

    move-object v1, v0

    check-cast v1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p2}, Landroidx/datastore/preferences/protobuf/Schema;->newInstance()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Landroidx/datastore/preferences/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p4, p0, v1}, Landroidx/datastore/preferences/protobuf/FieldSet;->setField(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {p1, v4}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {p1, v0, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->mergeMessageFieldInternal(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    return-object p5

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readMessage(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_f
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    const/4 v2, 0x3

    if-nez v0, :cond_4

    invoke-virtual {p4, p0}, Landroidx/datastore/preferences/protobuf/FieldSet;->getField(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    if-eqz v3, :cond_4

    sget-object p2, Landroidx/datastore/preferences/protobuf/Protobuf;->INSTANCE:Landroidx/datastore/preferences/protobuf/Protobuf;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/datastore/preferences/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object p2

    move-object v1, v0

    check-cast v1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p2}, Landroidx/datastore/preferences/protobuf/Schema;->newInstance()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Landroidx/datastore/preferences/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p4, p0, v1}, Landroidx/datastore/preferences/protobuf/FieldSet;->setField(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {p1, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {p1, v0, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->mergeGroupFieldInternal(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    return-object p5

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    sget-object v0, Landroidx/datastore/preferences/protobuf/Protobuf;->INSTANCE:Landroidx/datastore/preferences/protobuf/Protobuf;

    invoke-virtual {v0, p2}, Landroidx/datastore/preferences/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object p2

    invoke-interface {p2}, Landroidx/datastore/preferences/protobuf/Schema;->newInstance()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v3

    invoke-virtual {p1, v3, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->mergeGroupFieldInternal(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p2, v3}, Landroidx/datastore/preferences/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p1, v4}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Shouldn\'t reach here."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_13
    invoke-virtual {p1, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {p1, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readSInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {p1, v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {p1, v5}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readSFixed32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {p1, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_18
    invoke-virtual {p1, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1

    :pswitch_19
    invoke-virtual {p1, v5}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readFixed32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :pswitch_1a
    invoke-virtual {p1, v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1

    :pswitch_1b
    invoke-virtual {p1, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :pswitch_1c
    invoke-virtual {p1, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1

    :pswitch_1d
    invoke-virtual {p1, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1

    :pswitch_1e
    invoke-virtual {p1, v5}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_1

    :pswitch_1f
    invoke-virtual {p1, v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_1
    iget-boolean p1, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    if-eqz p1, :cond_7

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p1, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    if-eqz p1, :cond_6

    invoke-static {p0, v3}, Landroidx/datastore/preferences/protobuf/FieldSet;->verifyType(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)V

    invoke-virtual {p4, p0}, Landroidx/datastore/preferences/protobuf/FieldSet;->getField(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_5

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p4, Landroidx/datastore/preferences/protobuf/FieldSet;->fields:Landroidx/datastore/preferences/protobuf/SmallSortedMap;

    invoke-virtual {p2, p0, p1}, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    check-cast p1, Ljava/util/List;

    :goto_2
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/16 p2, 0x11

    if-eq p1, p2, :cond_8

    const/16 p2, 0x12

    if-eq p1, p2, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p4, p0}, Landroidx/datastore/preferences/protobuf/FieldSet;->getField(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    check-cast p1, Landroidx/datastore/preferences/protobuf/MessageLite;

    check-cast p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    sget-object p2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->dynamicMethod(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    check-cast v3, Landroidx/datastore/preferences/protobuf/MessageLite;

    iget-object p1, p2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->defaultInstance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    check-cast v3, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    invoke-virtual {p2, v3}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->buildPartial()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v3

    goto :goto_3

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_3
    invoke-virtual {p4, p0, v3}, Landroidx/datastore/preferences/protobuf/FieldSet;->setField(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)V

    :goto_4
    return-object p5

    :cond_b
    invoke-virtual {p1, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readInt32()I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public final parseLengthPrefixedMessageSetItem(Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/FieldSet;)V
    .locals 0

    check-cast p2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;

    iget-object p0, p2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;->messageDefaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1, p0, p3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readMessage(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p4, p1, p0}, Landroidx/datastore/preferences/protobuf/FieldSet;->setField(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)V

    return-void
.end method

.method public final parseMessageSetItem(Landroidx/datastore/preferences/protobuf/ByteString;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/FieldSet;)V
    .locals 3

    check-cast p2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;

    iget-object p0, p2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;->messageDefaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    check-cast p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->dynamicMethod(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->newCodedInput()Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    :try_start_0
    sget-object v0, Landroidx/datastore/preferences/protobuf/Protobuf;->INSTANCE:Landroidx/datastore/preferences/protobuf/Protobuf;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->forCodedInput(Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Landroidx/datastore/preferences/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->buildPartial()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    iget-object p2, p2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p4, p2, p0}, Landroidx/datastore/preferences/protobuf/FieldSet;->setField(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0

    :cond_0
    throw p0
.end method

.method public final serializeExtension(Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Ljava/util/Map$Entry;)V
    .locals 3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/datastore/preferences/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    sget-object v2, Landroidx/datastore/preferences/protobuf/Protobuf;->INSTANCE:Landroidx/datastore/preferences/protobuf/Protobuf;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/datastore/preferences/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v0

    invoke-static {p0, p2, p1, v0}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    sget-object v2, Landroidx/datastore/preferences/protobuf/Protobuf;->INSTANCE:Landroidx/datastore/preferences/protobuf/Protobuf;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/datastore/preferences/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v0

    invoke-static {p0, p2, p1, v0}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_0

    :pswitch_2
    iget p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p0, p2, p1}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;)V

    goto/16 :goto_0

    :pswitch_3
    iget p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p0, p2, p1}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;)V

    goto/16 :goto_0

    :pswitch_4
    iget v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget-boolean p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    invoke-static {v0, p2, p1, p0}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_0

    :pswitch_5
    iget v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget-boolean p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    invoke-static {v0, p2, p1, p0}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_0

    :pswitch_6
    iget v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget-boolean p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    invoke-static {v0, p2, p1, p0}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_0

    :pswitch_7
    iget v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget-boolean p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    invoke-static {v0, p2, p1, p0}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_0

    :pswitch_8
    iget v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget-boolean p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    invoke-static {v0, p2, p1, p0}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_0

    :pswitch_9
    iget v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget-boolean p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    invoke-static {v0, p2, p1, p0}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_0

    :pswitch_a
    iget v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget-boolean p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    invoke-static {v0, p2, p1, p0}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_0

    :pswitch_b
    iget v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget-boolean p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    invoke-static {v0, p2, p1, p0}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_0

    :pswitch_c
    iget v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget-boolean p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    invoke-static {v0, p2, p1, p0}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_0

    :pswitch_d
    iget v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget-boolean p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    invoke-static {v0, p2, p1, p0}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_0

    :pswitch_e
    iget v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget-boolean p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    invoke-static {v0, p2, p1, p0}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_0

    :pswitch_f
    iget v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget-boolean p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    invoke-static {v0, p2, p1, p0}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_0

    :pswitch_10
    iget v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget-boolean p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    invoke-static {v0, p2, p1, p0}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_0

    :pswitch_11
    iget v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget-boolean p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    invoke-static {v0, p2, p1, p0}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_0

    :cond_0
    sget-object v0, Landroidx/datastore/preferences/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_12
    iget p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/datastore/preferences/protobuf/Protobuf;->INSTANCE:Landroidx/datastore/preferences/protobuf/Protobuf;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroidx/datastore/preferences/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object p2

    invoke-virtual {p1, p0, v0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_0

    :pswitch_13
    iget p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/datastore/preferences/protobuf/Protobuf;->INSTANCE:Landroidx/datastore/preferences/protobuf/Protobuf;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroidx/datastore/preferences/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object p2

    invoke-virtual {p1, p0, v0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeGroup(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_0

    :pswitch_14
    iget p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->output:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_15
    iget p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {p1, p0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    goto/16 :goto_0

    :pswitch_16
    iget p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeInt32(II)V

    goto/16 :goto_0

    :pswitch_17
    iget p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeSInt64(IJ)V

    goto/16 :goto_0

    :pswitch_18
    iget p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeSInt32(II)V

    goto/16 :goto_0

    :pswitch_19
    iget p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeSFixed64(IJ)V

    goto/16 :goto_0

    :pswitch_1a
    iget p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeSFixed32(II)V

    goto/16 :goto_0

    :pswitch_1b
    iget p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeUInt32(II)V

    goto/16 :goto_0

    :pswitch_1c
    iget p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeBool(IZ)V

    goto :goto_0

    :pswitch_1d
    iget p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeFixed32(II)V

    goto :goto_0

    :pswitch_1e
    iget p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeFixed64(IJ)V

    goto :goto_0

    :pswitch_1f
    iget p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeInt32(II)V

    goto :goto_0

    :pswitch_20
    iget p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeUInt64(IJ)V

    goto :goto_0

    :pswitch_21
    iget p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeInt64(IJ)V

    goto :goto_0

    :pswitch_22
    iget p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2, p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeFloat(FI)V

    goto :goto_0

    :pswitch_23
    iget p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeDouble(DI)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method
