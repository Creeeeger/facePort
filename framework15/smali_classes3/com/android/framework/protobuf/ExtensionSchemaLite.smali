.class final Lcom/android/framework/protobuf/ExtensionSchemaLite;
.super Lcom/android/framework/protobuf/ExtensionSchema;
.source "ExtensionSchemaLite.java"


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/ExtensionSchema<",
        "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/ExtensionSchema;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist extensionNumber(Ljava/util/Map$Entry;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    nop

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    return v1
.end method

.method blacklist findExtensionByNumber(Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/MessageLite;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1, p2, p3}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/android/framework/protobuf/MessageLite;I)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    return-object v0
.end method

.method blacklist getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/framework/protobuf/FieldSet<",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v0, v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    return-object v0
.end method

.method blacklist getMutableExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/framework/protobuf/FieldSet<",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Lcom/android/framework/protobuf/FieldSet;

    move-result-object v0

    return-object v0
.end method

.method blacklist hasExtensions(Lcom/android/framework/protobuf/MessageLite;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    return v0
.end method

.method blacklist makeImmutable(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/ExtensionSchemaLite;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldSet;->makeImmutable()V

    return-void
.end method

.method blacklist parseExtension(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Ljava/lang/Object;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/FieldSet;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/Reader;",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            "Lcom/android/framework/protobuf/FieldSet<",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;TUB;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p3

    check-cast v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v10}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v11

    iget-object v3, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v12, 0x0

    sget-object v3, Lcom/android/framework/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v10}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type cannot be packed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v5}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v3

    invoke-interface {v0, v13}, Lcom/android/framework/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    iget-object v3, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/android/framework/protobuf/Internal$EnumLiteMap;

    move-result-object v6

    move-object v3, p1

    move v4, v11

    move-object v5, v13

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v3 .. v8}, Lcom/android/framework/protobuf/SchemaUtil;->filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Lcom/android/framework/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v13

    move-object v9, v3

    goto/16 :goto_0

    :pswitch_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3}, Lcom/android/framework/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    move-object v4, v3

    goto/16 :goto_0

    :pswitch_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3}, Lcom/android/framework/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    move-object v4, v3

    goto/16 :goto_0

    :pswitch_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3}, Lcom/android/framework/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    move-object v4, v3

    goto/16 :goto_0

    :pswitch_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3}, Lcom/android/framework/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    move-object v4, v3

    goto :goto_0

    :pswitch_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3}, Lcom/android/framework/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    move-object v4, v3

    goto :goto_0

    :pswitch_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3}, Lcom/android/framework/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    move-object v4, v3

    goto :goto_0

    :pswitch_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3}, Lcom/android/framework/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    move-object v4, v3

    goto :goto_0

    :pswitch_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3}, Lcom/android/framework/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    move-object v4, v3

    goto :goto_0

    :pswitch_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3}, Lcom/android/framework/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    move-object v4, v3

    goto :goto_0

    :pswitch_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3}, Lcom/android/framework/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    move-object v4, v3

    goto :goto_0

    :pswitch_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3}, Lcom/android/framework/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    move-object v4, v3

    goto :goto_0

    :pswitch_c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3}, Lcom/android/framework/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    move-object v4, v3

    goto :goto_0

    :pswitch_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3}, Lcom/android/framework/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    move-object v4, v3

    nop

    :goto_0
    iget-object v3, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v2, v3, v4}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    move-object v6, p1

    move-object/from16 v7, p7

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v10}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v4

    sget-object v5, Lcom/android/framework/protobuf/WireFormat$FieldType;->ENUM:Lcom/android/framework/protobuf/WireFormat$FieldType;

    if-ne v4, v5, :cond_2

    invoke-interface/range {p2 .. p2}, Lcom/android/framework/protobuf/Reader;->readInt32()I

    move-result v4

    iget-object v5, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v5}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/android/framework/protobuf/Internal$EnumLiteMap;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/framework/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/android/framework/protobuf/Internal$EnumLite;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v6, p1

    move-object/from16 v7, p7

    invoke-static {p1, v11, v4, v9, v7}, Lcom/android/framework/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    :cond_1
    move-object v6, p1

    move-object/from16 v7, p7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_1

    :cond_2
    move-object v6, p1

    move-object/from16 v7, p7

    sget-object v4, Lcom/android/framework/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v10}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {v10}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->isRepeated()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v2, v4}, Lcom/android/framework/protobuf/FieldSet;->getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/android/framework/protobuf/GeneratedMessageLite;

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v5

    move-object v8, v4

    check-cast v8, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v8}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-interface {v5}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8, v4}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v12, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v2, v12, v8}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    move-object v4, v8

    :cond_3
    invoke-interface {v0, v4, v5, v1}, Lcom/android/framework/protobuf/Reader;->mergeMessageField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    return-object v9

    :cond_4
    nop

    invoke-virtual {v10}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/framework/protobuf/MessageLite;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Lcom/android/framework/protobuf/Reader;->readMessage(Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {v10}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->isRepeated()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v2, v4}, Lcom/android/framework/protobuf/FieldSet;->getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/android/framework/protobuf/GeneratedMessageLite;

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v5

    move-object v8, v4

    check-cast v8, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v8}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-interface {v5}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8, v4}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v12, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v2, v12, v8}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    move-object v4, v8

    :cond_5
    invoke-interface {v0, v4, v5, v1}, Lcom/android/framework/protobuf/Reader;->mergeGroupField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    return-object v9

    :cond_6
    nop

    invoke-virtual {v10}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/framework/protobuf/MessageLite;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Lcom/android/framework/protobuf/Reader;->readGroup(Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_10
    invoke-interface/range {p2 .. p2}, Lcom/android/framework/protobuf/Reader;->readString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_11
    invoke-interface/range {p2 .. p2}, Lcom/android/framework/protobuf/Reader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_12
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Shouldn\'t reach here."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_13
    invoke-interface/range {p2 .. p2}, Lcom/android/framework/protobuf/Reader;->readSInt64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_14
    invoke-interface/range {p2 .. p2}, Lcom/android/framework/protobuf/Reader;->readSInt32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :pswitch_15
    invoke-interface/range {p2 .. p2}, Lcom/android/framework/protobuf/Reader;->readSFixed64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1

    :pswitch_16
    invoke-interface/range {p2 .. p2}, Lcom/android/framework/protobuf/Reader;->readSFixed32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :pswitch_17
    invoke-interface/range {p2 .. p2}, Lcom/android/framework/protobuf/Reader;->readUInt32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :pswitch_18
    invoke-interface/range {p2 .. p2}, Lcom/android/framework/protobuf/Reader;->readBool()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1

    :pswitch_19
    invoke-interface/range {p2 .. p2}, Lcom/android/framework/protobuf/Reader;->readFixed32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :pswitch_1a
    invoke-interface/range {p2 .. p2}, Lcom/android/framework/protobuf/Reader;->readFixed64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1

    :pswitch_1b
    invoke-interface/range {p2 .. p2}, Lcom/android/framework/protobuf/Reader;->readInt32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :pswitch_1c
    invoke-interface/range {p2 .. p2}, Lcom/android/framework/protobuf/Reader;->readUInt64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1

    :pswitch_1d
    invoke-interface/range {p2 .. p2}, Lcom/android/framework/protobuf/Reader;->readInt64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1

    :pswitch_1e
    invoke-interface/range {p2 .. p2}, Lcom/android/framework/protobuf/Reader;->readFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_1

    :pswitch_1f
    invoke-interface/range {p2 .. p2}, Lcom/android/framework/protobuf/Reader;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    nop

    :goto_1
    invoke-virtual {v10}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->isRepeated()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v2, v4, v3}, Lcom/android/framework/protobuf/FieldSet;->addRepeatedField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    sget-object v4, Lcom/android/framework/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v10}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    goto :goto_2

    :pswitch_20
    iget-object v4, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v2, v4}, Lcom/android/framework/protobuf/FieldSet;->getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :cond_8
    :goto_2
    iget-object v4, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v2, v4, v3}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    :goto_3
    return-object v9

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

    :pswitch_data_2
    .packed-switch 0x11
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method blacklist parseLengthPrefixedMessageSetItem(Lcom/android/framework/protobuf/Reader;Ljava/lang/Object;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/FieldSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/Reader;",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            "Lcom/android/framework/protobuf/FieldSet<",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    nop

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/framework/protobuf/MessageLite;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p1, v1, p3}, Lcom/android/framework/protobuf/Reader;->readMessage(Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v0, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p4, v2, v1}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-void
.end method

.method blacklist parseMessageSetItem(Lcom/android/framework/protobuf/ByteString;Ljava/lang/Object;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/FieldSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/ByteString;",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            "Lcom/android/framework/protobuf/FieldSet<",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/framework/protobuf/MessageLite;->newBuilderForType()Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->newCodedInput()Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    iget-object v3, v0, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-interface {v1}, Lcom/android/framework/protobuf/MessageLite$Builder;->buildPartial()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v4

    invoke-virtual {p4, v3, v4}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/CodedInputStream;->checkLastTagWas(I)V

    return-void
.end method

.method blacklist serializeExtension(Lcom/android/framework/protobuf/Writer;Ljava/util/Map$Entry;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/Writer;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    nop

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/framework/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    nop

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v2

    invoke-static {v3, v4, p1, v2}, Lcom/android/framework/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    nop

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v2

    invoke-static {v3, v4, p1, v2}, Lcom/android/framework/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Lcom/android/framework/protobuf/Schema;)V

    :cond_0
    goto/16 :goto_0

    :pswitch_2
    nop

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v1, v2, p1}, Lcom/android/framework/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_0

    :pswitch_3
    nop

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v1, v2, p1}, Lcom/android/framework/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_0

    :pswitch_4
    nop

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    invoke-static {v1, v2, p1, v3}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_5
    nop

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    invoke-static {v1, v2, p1, v3}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_6
    nop

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    invoke-static {v1, v2, p1, v3}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_7
    nop

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    invoke-static {v1, v2, p1, v3}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_8
    nop

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    invoke-static {v1, v2, p1, v3}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_9
    nop

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    invoke-static {v1, v2, p1, v3}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_a
    nop

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    invoke-static {v1, v2, p1, v3}, Lcom/android/framework/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_b
    nop

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    invoke-static {v1, v2, p1, v3}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto :goto_0

    :pswitch_c
    nop

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    invoke-static {v1, v2, p1, v3}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto :goto_0

    :pswitch_d
    nop

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    invoke-static {v1, v2, p1, v3}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto :goto_0

    :pswitch_e
    nop

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    invoke-static {v1, v2, p1, v3}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto :goto_0

    :pswitch_f
    nop

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    invoke-static {v1, v2, p1, v3}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto :goto_0

    :pswitch_10
    nop

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    invoke-static {v1, v2, p1, v3}, Lcom/android/framework/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto :goto_0

    :pswitch_11
    nop

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    invoke-static {v1, v2, p1, v3}, Lcom/android/framework/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    nop

    :cond_1
    :goto_0
    goto/16 :goto_1

    :cond_2
    sget-object v1, Lcom/android/framework/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_12
    nop

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lcom/android/framework/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_1

    :pswitch_13
    nop

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lcom/android/framework/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lcom/android/framework/protobuf/Writer;->writeString(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/ByteString;

    invoke-interface {p1, v1, v2}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/android/framework/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/android/framework/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_1

    :pswitch_18
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/android/framework/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_1

    :pswitch_19
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/android/framework/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_1

    :pswitch_1a
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/android/framework/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_1

    :pswitch_1b
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/android/framework/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_1

    :pswitch_1c
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/android/framework/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_1

    :pswitch_1d
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/android/framework/protobuf/Writer;->writeFixed32(II)V

    goto :goto_1

    :pswitch_1e
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/android/framework/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_1

    :pswitch_1f
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/android/framework/protobuf/Writer;->writeInt32(II)V

    goto :goto_1

    :pswitch_20
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/android/framework/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_1

    :pswitch_21
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/android/framework/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_1

    :pswitch_22
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/android/framework/protobuf/Writer;->writeFloat(IF)V

    goto :goto_1

    :pswitch_23
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/android/framework/protobuf/Writer;->writeDouble(ID)V

    nop

    :goto_1
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

.method blacklist setExtensions(Ljava/lang/Object;Lcom/android/framework/protobuf/FieldSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/FieldSet<",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    iput-object p2, v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    return-void
.end method
