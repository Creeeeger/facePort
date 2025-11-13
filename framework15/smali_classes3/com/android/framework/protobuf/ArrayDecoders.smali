.class final Lcom/android/framework/protobuf/ArrayDecoders;
.super Ljava/lang/Object;
.source "ArrayDecoders.java"


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist decodeBoolList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    move-object v0, p4

    check-cast v0, Lcom/android/framework/protobuf/BooleanArrayList;

    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget-wide v1, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(Z)V

    :goto_1
    if-ge p2, p3, :cond_3

    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v6, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v6, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {p1, v1, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget-wide v6, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    cmp-long v6, v6, v3

    if-eqz v6, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v5

    :goto_2
    invoke-virtual {v0, v6}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(Z)V

    goto :goto_1

    :cond_3
    :goto_3
    return p2
.end method

.method static blacklist decodeBytes([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    iget v0, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v0, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    iput-object v1, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    return p1

    :cond_0
    invoke-static {p0, p1, v0}, Lcom/android/framework/protobuf/ByteString;->copyFrom([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    add-int v1, p1, v0

    return v1

    :cond_1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    :cond_2
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method static blacklist decodeBytesList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    move-object v0, p4

    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget v1, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v1, :cond_7

    array-length v2, p1

    sub-int/2addr v2, p2

    if-gt v1, v2, :cond_6

    if-nez v1, :cond_0

    sget-object v2, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    invoke-interface {v0, v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, v1}, Lcom/android/framework/protobuf/ByteString;->copyFrom([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    add-int/2addr p2, v1

    :goto_0
    if-ge p2, p3, :cond_5

    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    iget v3, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p1, v2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget v3, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v3, :cond_4

    array-length v4, p1

    sub-int/2addr v4, p2

    if-gt v3, v4, :cond_3

    if-nez v3, :cond_2

    sget-object v4, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    invoke-interface {v0, v4}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {p1, p2, v3}, Lcom/android/framework/protobuf/ByteString;->copyFrom([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    add-int/2addr p2, v3

    :goto_1
    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4

    :cond_4
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4

    :cond_5
    :goto_2
    return p2

    :cond_6
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    :cond_7
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static blacklist decodeDouble([BI)D
    .locals 2

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist decodeDoubleList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    move-object v0, p4

    check-cast v0, Lcom/android/framework/protobuf/DoubleArrayList;

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(D)V

    add-int/lit8 p2, p2, 0x8

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v2, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(D)V

    add-int/lit8 p2, v1, 0x8

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method static blacklist decodeExtension(I[BIILcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "**>;",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "Lcom/android/framework/protobuf/UnknownFieldSetLite;",
            "Lcom/android/framework/protobuf/UnknownFieldSetLite;",
            ">;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    iget-object v12, v9, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    ushr-int/lit8 v13, p0, 0x3

    iget-object v0, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/framework/protobuf/ArrayDecoders$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual/range {p5 .. p5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type cannot be packed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/android/framework/protobuf/IntArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/IntArrayList;-><init>()V

    move-object v6, v0

    invoke-static {v7, v8, v6, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedVarint32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    iget-object v0, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/android/framework/protobuf/Internal$EnumLiteMap;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p4

    move v1, v13

    move-object v2, v6

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/framework/protobuf/SchemaUtil;->filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Lcom/android/framework/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    iget-object v0, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v0, v6}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    move-object/from16 v15, p6

    goto/16 :goto_7

    :pswitch_1
    new-instance v0, Lcom/android/framework/protobuf/LongArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/LongArrayList;-><init>()V

    invoke-static {v7, v8, v0, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedSInt64List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1, v0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    move-object/from16 v15, p6

    goto/16 :goto_7

    :pswitch_2
    new-instance v0, Lcom/android/framework/protobuf/IntArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/IntArrayList;-><init>()V

    invoke-static {v7, v8, v0, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedSInt32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1, v0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    move-object/from16 v15, p6

    goto/16 :goto_7

    :pswitch_3
    new-instance v0, Lcom/android/framework/protobuf/BooleanArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/BooleanArrayList;-><init>()V

    invoke-static {v7, v8, v0, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedBoolList([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1, v0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    move-object/from16 v15, p6

    goto/16 :goto_7

    :pswitch_4
    new-instance v0, Lcom/android/framework/protobuf/IntArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/IntArrayList;-><init>()V

    invoke-static {v7, v8, v0, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedFixed32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1, v0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    move-object/from16 v15, p6

    goto/16 :goto_7

    :pswitch_5
    new-instance v0, Lcom/android/framework/protobuf/LongArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/LongArrayList;-><init>()V

    invoke-static {v7, v8, v0, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedFixed64List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1, v0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    move-object/from16 v15, p6

    goto/16 :goto_7

    :pswitch_6
    new-instance v0, Lcom/android/framework/protobuf/IntArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/IntArrayList;-><init>()V

    invoke-static {v7, v8, v0, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedVarint32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1, v0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    move-object/from16 v15, p6

    goto/16 :goto_7

    :pswitch_7
    new-instance v0, Lcom/android/framework/protobuf/LongArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/LongArrayList;-><init>()V

    invoke-static {v7, v8, v0, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedVarint64List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1, v0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    move-object/from16 v15, p6

    goto/16 :goto_7

    :pswitch_8
    new-instance v0, Lcom/android/framework/protobuf/FloatArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/FloatArrayList;-><init>()V

    invoke-static {v7, v8, v0, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedFloatList([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1, v0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    move-object/from16 v15, p6

    goto/16 :goto_7

    :pswitch_9
    new-instance v0, Lcom/android/framework/protobuf/DoubleArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/DoubleArrayList;-><init>()V

    invoke-static {v7, v8, v0, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedDoubleList([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1, v0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    move-object/from16 v15, p6

    goto/16 :goto_7

    :cond_0
    const/4 v14, 0x0

    invoke-virtual/range {p5 .. p5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v0

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$FieldType;->ENUM:Lcom/android/framework/protobuf/WireFormat$FieldType;

    if-ne v0, v1, :cond_2

    invoke-static {v7, v8, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/android/framework/protobuf/Internal$EnumLiteMap;

    move-result-object v1

    iget v2, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-interface {v1, v2}, Lcom/android/framework/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/android/framework/protobuf/Internal$EnumLite;

    move-result-object v1

    if-nez v1, :cond_1

    iget v2, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    const/4 v3, 0x0

    move-object/from16 v15, p6

    invoke-static {v9, v13, v2, v3, v15}, Lcom/android/framework/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    return v0

    :cond_1
    move-object/from16 v15, p6

    iget v2, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto/16 :goto_5

    :cond_2
    move-object/from16 v15, p6

    sget-object v0, Lcom/android/framework/protobuf/ArrayDecoders$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual/range {p5 .. p5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    move v0, v8

    goto/16 :goto_5

    :pswitch_a
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/framework/protobuf/MessageLite;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v6

    invoke-virtual/range {p5 .. p5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_3

    move/from16 v5, p3

    invoke-static {v6, v7, v8, v5, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageField(Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v2, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v12, v1, v2}, Lcom/android/framework/protobuf/FieldSet;->addRepeatedField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move/from16 v5, p3

    iget-object v0, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v0}, Lcom/android/framework/protobuf/FieldSet;->getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-interface {v6}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1, v0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    move-object/from16 v16, v0

    goto :goto_0

    :cond_4
    move-object/from16 v16, v0

    :goto_0
    nop

    move-object/from16 v0, v16

    move-object v1, v6

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p7

    invoke-static/range {v0 .. v5}, Lcom/android/framework/protobuf/ArrayDecoders;->mergeMessageField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    :goto_1
    return v0

    :pswitch_b
    shl-int/lit8 v0, v13, 0x3

    or-int/lit8 v16, v0, 0x4

    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/framework/protobuf/MessageLite;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v17

    invoke-virtual/range {p5 .. p5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v16

    move-object/from16 v5, p7

    invoke-static/range {v0 .. v5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeGroupField(Lcom/android/framework/protobuf/Schema;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v2, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v12, v1, v2}, Lcom/android/framework/protobuf/FieldSet;->addRepeatedField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    iget-object v0, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v0}, Lcom/android/framework/protobuf/FieldSet;->getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-interface/range {v17 .. v17}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1, v0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    move-object/from16 v18, v0

    goto :goto_2

    :cond_6
    move-object/from16 v18, v0

    :goto_2
    nop

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, v16

    move-object/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcom/android/framework/protobuf/ArrayDecoders;->mergeGroupField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    :goto_3
    return v0

    :pswitch_c
    invoke-static {v7, v8, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeString([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-object v14, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto/16 :goto_5

    :pswitch_d
    invoke-static {v7, v8, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeBytes([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-object v14, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto/16 :goto_5

    :pswitch_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t reach here."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_f
    invoke-static {v7, v8, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-wide v1, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    goto :goto_5

    :pswitch_10
    invoke-static {v7, v8, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v1}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_5

    :pswitch_11
    invoke-static {v7, v8, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-wide v1, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    goto :goto_5

    :pswitch_12
    invoke-static/range {p1 .. p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    add-int/lit8 v0, v8, 0x4

    goto :goto_5

    :pswitch_13
    invoke-static/range {p1 .. p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    add-int/lit8 v0, v8, 0x8

    goto :goto_5

    :pswitch_14
    invoke-static {v7, v8, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_5

    :pswitch_15
    invoke-static {v7, v8, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-wide v1, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    goto :goto_5

    :pswitch_16
    invoke-static/range {p1 .. p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    add-int/lit8 v0, v8, 0x4

    goto :goto_5

    :pswitch_17
    invoke-static/range {p1 .. p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    add-int/lit8 v0, v8, 0x8

    nop

    :goto_5
    invoke-virtual/range {p5 .. p5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1, v14}, Lcom/android/framework/protobuf/FieldSet;->addRepeatedField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_6

    :cond_8
    iget-object v1, v10, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1, v14}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    :goto_6
    move v8, v0

    :goto_7
    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method static blacklist decodeExtensionOrUnknownField(I[BIILjava/lang/Object;Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/MessageLite;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "Lcom/android/framework/protobuf/UnknownFieldSetLite;",
            "Lcom/android/framework/protobuf/UnknownFieldSetLite;",
            ">;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v8, p0, 0x3

    move-object/from16 v9, p7

    iget-object v0, v9, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-object/from16 v10, p5

    invoke-virtual {v0, v10, v8}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/android/framework/protobuf/MessageLite;I)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v11

    if-nez v11, :cond_0

    nop

    invoke-static/range {p4 .. p4}, Lcom/android/framework/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v4

    move v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v5, p7

    invoke-static/range {v0 .. v5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    return v0

    :cond_0
    move-object/from16 v0, p4

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Lcom/android/framework/protobuf/FieldSet;

    move-result-object v12

    move-object/from16 v4, p4

    check-cast v4, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    move v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object v5, v11

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeExtension(I[BIILcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    return v0
.end method

.method static blacklist decodeFixed32([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static blacklist decodeFixed32List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    move-object v0, p4

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    add-int/lit8 p2, p2, 0x4

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v2, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    add-int/lit8 p2, v1, 0x4

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method static blacklist decodeFixed64([BI)J
    .locals 7

    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x7

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static blacklist decodeFixed64List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    move-object v0, p4

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    add-int/lit8 p2, p2, 0x8

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v2, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    add-int/lit8 p2, v1, 0x8

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method static blacklist decodeFloat([BI)F
    .locals 1

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method static blacklist decodeFloatList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    move-object v0, p4

    check-cast v0, Lcom/android/framework/protobuf/FloatArrayList;

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(F)V

    add-int/lit8 p2, p2, 0x4

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v2, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(F)V

    add-int/lit8 p2, v1, 0x4

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method static blacklist decodeGroupField(Lcom/android/framework/protobuf/Schema;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/framework/protobuf/ArrayDecoders;->mergeGroupField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    invoke-interface {p0, v7}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    iput-object v7, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    return v0
.end method

.method static blacklist decodeGroupList(Lcom/android/framework/protobuf/Schema;I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/Schema;",
            "I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p5

    and-int/lit8 v1, p1, -0x8

    or-int/lit8 v1, v1, 0x4

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, v1

    move-object v7, p6

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeGroupField(Lcom/android/framework/protobuf/Schema;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    iget-object v2, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p3, p4, :cond_1

    invoke-static {p2, p3, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    iget v2, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p1, v2, :cond_0

    goto :goto_1

    :cond_0
    move-object v2, p0

    move-object v3, p2

    move v4, v8

    move v5, p4

    move v6, v1

    move-object v7, p6

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeGroupField(Lcom/android/framework/protobuf/Schema;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    iget-object v2, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return p3
.end method

.method static blacklist decodeMessageField(Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/framework/protobuf/ArrayDecoders;->mergeMessageField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    invoke-interface {p0, v6}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    iput-object v6, p4, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    return v0
.end method

.method static blacklist decodeMessageList(Lcom/android/framework/protobuf/Schema;I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/Schema<",
            "*>;I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p5

    invoke-static {p0, p2, p3, p4, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageField(Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    iget-object v1, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p3, p4, :cond_1

    invoke-static {p2, p3, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v2, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, p2, v1, p4, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageField(Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    iget-object v2, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return p3
.end method

.method static blacklist decodePackedBoolList([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/BooleanArrayList;

    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    iget v1, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p1

    :goto_0
    if-ge p1, v1, :cond_1

    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    iget-wide v2, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(Z)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    return p1

    :cond_2
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static blacklist decodePackedDoubleList([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/DoubleArrayList;

    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    iget v1, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p1

    :goto_0
    if-ge p1, v1, :cond_0

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(D)V

    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static blacklist decodePackedFixed32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    iget v1, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p1

    :goto_0
    if-ge p1, v1, :cond_0

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static blacklist decodePackedFixed64List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    iget v1, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p1

    :goto_0
    if-ge p1, v1, :cond_0

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static blacklist decodePackedFloatList([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/FloatArrayList;

    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    iget v1, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p1

    :goto_0
    if-ge p1, v1, :cond_0

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(F)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static blacklist decodePackedSInt32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    iget v1, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p1

    :goto_0
    if-ge p1, v1, :cond_0

    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    iget v2, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v2}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static blacklist decodePackedSInt64List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    iget v1, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p1

    :goto_0
    if-ge p1, v1, :cond_0

    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    iget-wide v2, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static blacklist decodePackedVarint32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    iget v1, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p1

    :goto_0
    if-ge p1, v1, :cond_0

    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    iget v2, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static blacklist decodePackedVarint64List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    iget v1, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p1

    :goto_0
    if-ge p1, v1, :cond_0

    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    iget-wide v2, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-virtual {v0, v2, v3}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static blacklist decodeSInt32List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    move-object v0, p4

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget v1, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v1}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v2, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v1, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget v2, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v2}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method static blacklist decodeSInt64List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    move-object v0, p4

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget-wide v1, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v2, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v1, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget-wide v2, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method static blacklist decodeString([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    iget v0, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    const-string v1, ""

    iput-object v1, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    return p1

    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    add-int v1, p1, v0

    return v1

    :cond_1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method static blacklist decodeStringList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    move-object v0, p4

    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget v1, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v1, :cond_5

    const-string v2, ""

    if-nez v1, :cond_0

    invoke-interface {v0, v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, p2, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v0, v3}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    add-int/2addr p2, v1

    :goto_0
    if-ge p2, p3, :cond_4

    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    iget v4, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p1, v3, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget v4, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v4, :cond_3

    if-nez v4, :cond_2

    invoke-interface {v0, v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, p1, p2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v0, v5}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    add-int/2addr p2, v4

    :goto_1
    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    :cond_4
    :goto_2
    return p2

    :cond_5
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static blacklist decodeStringListRequireUtf8(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    move-object v0, p4

    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget v1, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v1, :cond_7

    const-string v2, ""

    if-nez v1, :cond_0

    invoke-interface {v0, v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    add-int v3, p2, v1

    invoke-static {p1, p2, v3}, Lcom/android/framework/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, p2, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v0, v3}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    add-int/2addr p2, v1

    :goto_0
    if-ge p2, p3, :cond_5

    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    iget v4, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p1, v3, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget v4, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v4, :cond_4

    if-nez v4, :cond_2

    invoke-interface {v0, v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int v5, p2, v4

    invoke-static {p1, p2, v5}, Lcom/android/framework/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, p1, p2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v0, v5}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    add-int/2addr p2, v4

    :goto_1
    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    :cond_4
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    :cond_5
    :goto_2
    return p2

    :cond_6
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    :cond_7
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static blacklist decodeStringRequireUtf8([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    iget v0, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    const-string v1, ""

    iput-object v1, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    return p1

    :cond_0
    invoke-static {p0, p1, v0}, Lcom/android/framework/protobuf/Utf8;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    add-int v1, p1, v0

    return v1

    :cond_1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method static blacklist decodeUnknownField(I[BIILcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :pswitch_1
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, p0, v0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    add-int/lit8 v0, p2, 0x4

    return v0

    :pswitch_2
    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->newInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    and-int/lit8 v1, p0, -0x8

    or-int/lit8 v7, v1, 0x4

    const/4 v1, 0x0

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget v8, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-ne v8, v7, :cond_0

    move v1, v8

    goto :goto_1

    :cond_0
    move v1, v8

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v0

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    goto :goto_0

    :cond_1
    :goto_1
    if-gt p2, p3, :cond_2

    if-ne v1, v7, :cond_2

    invoke-virtual {p4, p0, v0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return p2

    :cond_2
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    :pswitch_3
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget v0, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v0, :cond_5

    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt v0, v1, :cond_4

    if-nez v0, :cond_3

    sget-object v1, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p4, p0, v1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1, p2, v0}, Lcom/android/framework/protobuf/ByteString;->copyFrom([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p4, p0, v1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    :goto_2
    add-int v1, p2, v0

    return v1

    :cond_4
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    :cond_5
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    :pswitch_4
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, p0, v0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    add-int/lit8 v0, p2, 0x8

    return v0

    :pswitch_5
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget-wide v0, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, p0, v0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return p2

    :cond_6
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static blacklist decodeVarint32(I[BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 6

    and-int/lit8 v0, p0, 0x7f

    add-int/lit8 v1, p2, 0x1

    aget-byte p2, p1, p2

    if-ltz p2, :cond_0

    shl-int/lit8 v2, p2, 0x7

    or-int/2addr v2, v0

    iput v2, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    return v1

    :cond_0
    and-int/lit8 v2, p2, 0x7f

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    if-ltz v1, :cond_1

    shl-int/lit8 v3, v1, 0xe

    or-int/2addr v3, v0

    iput v3, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    return v2

    :cond_1
    and-int/lit8 v3, v1, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    if-ltz v2, :cond_2

    shl-int/lit8 v4, v2, 0x15

    or-int/2addr v4, v0

    iput v4, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    return v3

    :cond_2
    and-int/lit8 v4, v2, 0x7f

    shl-int/lit8 v4, v4, 0x15

    or-int/2addr v0, v4

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    if-ltz v3, :cond_3

    shl-int/lit8 v5, v3, 0x1c

    or-int/2addr v5, v0

    iput v5, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    return v4

    :cond_3
    and-int/lit8 v5, v3, 0x7f

    shl-int/lit8 v5, v5, 0x1c

    or-int/2addr v0, v5

    :goto_0
    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    if-gez v4, :cond_4

    move v4, v5

    goto :goto_0

    :cond_4
    iput v0, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    return v5
.end method

.method static blacklist decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    iput p1, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    return v0

    :cond_0
    invoke-static {p1, p0, v0, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    return v1
.end method

.method static blacklist decodeVarint32List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    move-object v0, p4

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget v1, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v2, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v1, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget v2, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method static blacklist decodeVarint64(J[BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 7

    const-wide/16 v0, 0x7f

    and-long/2addr v0, p0

    add-int/lit8 v2, p3, 0x1

    aget-byte p3, p2, p3

    const/4 v3, 0x7

    and-int/lit8 v4, p3, 0x7f

    int-to-long v4, v4

    const/4 v6, 0x7

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    :goto_0
    if-gez p3, :cond_0

    add-int/lit8 v4, v2, 0x1

    aget-byte p3, p2, v2

    add-int/lit8 v3, v3, 0x7

    and-int/lit8 v2, p3, 0x7f

    int-to-long v5, v2

    shl-long/2addr v5, v3

    or-long/2addr v0, v5

    move v2, v4

    goto :goto_0

    :cond_0
    iput-wide v0, p4, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    return v2
.end method

.method static blacklist decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 5

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    int-to-long v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    iput-wide v1, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    return v0

    :cond_0
    invoke-static {v1, v2, p0, v0, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64(J[BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1
.end method

.method static blacklist decodeVarint64List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    move-object v0, p4

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget-wide v1, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v2, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v1, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget-wide v2, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-virtual {v0, v2, v3}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method static blacklist mergeGroupField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v7, p1

    check-cast v7, Lcom/android/framework/protobuf/MessageSchema;

    nop

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->parseProto2Message(Ljava/lang/Object;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iput-object p0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    return v0
.end method

.method static blacklist mergeMessageField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    if-gez p3, :cond_0

    invoke-static {p3, p2, v0, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget p3, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, v0

    :goto_0
    if-ltz p3, :cond_1

    sub-int v0, p4, v6

    if-gt p3, v0, :cond_1

    add-int v4, v6, p3

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v3, v6

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)V

    iput-object p0, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    add-int v0, v6, p3

    return v0

    :cond_1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method static blacklist skipField(I[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :pswitch_1
    add-int/lit8 v0, p2, 0x4

    return v0

    :pswitch_2
    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p4}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget v1, p4, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1, p1, p2, p3, p4}, Lcom/android/framework/protobuf/ArrayDecoders;->skipField(I[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    goto :goto_0

    :cond_1
    :goto_1
    if-gt p2, p3, :cond_2

    if-ne v1, v0, :cond_2

    return p2

    :cond_2
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    :pswitch_3
    invoke-static {p1, p2, p4}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget v0, p4, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v0, p2

    return v0

    :pswitch_4
    add-int/lit8 v0, p2, 0x8

    return v0

    :pswitch_5
    invoke-static {p1, p2, p4}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    return p2

    :cond_3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
