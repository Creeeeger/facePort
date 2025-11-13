.class public abstract Lcom/google/protobuf/MapEntryLite;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final metadata:Lcom/google/protobuf/MapEntryLite$Metadata;


# direct methods
.method public static computeSerializedSize(Lcom/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/google/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/protobuf/WireFormat$FieldType;

    sget v6, Lcom/google/protobuf/FieldSet;->$r8$clinit:I

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v6

    sget-object v7, Lcom/google/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne v5, v7, :cond_0

    mul-int/2addr v6, v3

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v8, 0x0

    const/16 v9, 0x3f

    const-string v10, "There is no way to get here, but the compiler thinks otherwise."

    const/16 v11, 0x8

    const/4 v12, 0x4

    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    shl-long v15, v13, v4

    shr-long/2addr v13, v9

    xor-long/2addr v13, v15

    invoke-static {v13, v14}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt64SizeNoTag(J)I

    move-result v1

    goto/16 :goto_3

    :pswitch_1
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shl-int/lit8 v5, v1, 0x1

    shr-int/lit8 v1, v1, 0x1f

    xor-int/2addr v1, v5

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    move-result v1

    goto/16 :goto_3

    :pswitch_2
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    move v1, v11

    goto/16 :goto_3

    :pswitch_3
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    move v1, v12

    goto/16 :goto_3

    :pswitch_4
    instance-of v5, v1, Lcom/google/protobuf/Internal$EnumLite;

    if-eqz v5, :cond_1

    check-cast v1, Lcom/google/protobuf/Internal$EnumLite;

    invoke-interface {v1}, Lcom/google/protobuf/Internal$EnumLite;->getNumber()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeInt32SizeNoTag(I)I

    move-result v1

    goto/16 :goto_3

    :cond_1
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeInt32SizeNoTag(I)I

    move-result v1

    goto/16 :goto_3

    :pswitch_5
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    move-result v1

    goto/16 :goto_3

    :pswitch_6
    instance-of v5, v1, Lcom/google/protobuf/ByteString;

    if-eqz v5, :cond_2

    check-cast v1, Lcom/google/protobuf/ByteString;

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v1

    goto/16 :goto_3

    :cond_2
    check-cast v1, [B

    array-length v1, v1

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    move-result v5

    :goto_2
    add-int/2addr v1, v5

    goto/16 :goto_3

    :pswitch_7
    check-cast v1, Lcom/google/protobuf/MessageLite;

    check-cast v1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite;->getSerializedSize()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    move-result v5

    goto :goto_2

    :pswitch_8
    check-cast v1, Lcom/google/protobuf/MessageLite;

    check-cast v1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v1, v8}, Lcom/google/protobuf/GeneratedMessageLite;->getSerializedSize(Lcom/google/protobuf/Schema;)I

    move-result v1

    goto :goto_3

    :pswitch_9
    instance-of v5, v1, Lcom/google/protobuf/ByteString;

    if-eqz v5, :cond_3

    check-cast v1, Lcom/google/protobuf/ByteString;

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v1

    goto :goto_3

    :cond_3
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    :pswitch_a
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v1, v4

    goto :goto_3

    :pswitch_b
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :pswitch_c
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_0

    :pswitch_d
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeInt32SizeNoTag(I)I

    move-result v1

    goto :goto_3

    :pswitch_e
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt64SizeNoTag(J)I

    move-result v1

    goto :goto_3

    :pswitch_f
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt64SizeNoTag(J)I

    move-result v1

    goto :goto_3

    :pswitch_10
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_1

    :pswitch_11
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_0

    :goto_3
    add-int/2addr v1, v6

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v5

    iget-object v0, v0, Lcom/google/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne v0, v7, :cond_4

    mul-int/2addr v5, v3

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_12
    move-object v0, v2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    shl-long v6, v2, v4

    shr-long/2addr v2, v9

    xor-long/2addr v2, v6

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt64SizeNoTag(J)I

    move-result v4

    goto/16 :goto_7

    :pswitch_13
    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shl-int/lit8 v2, v0, 0x1

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v2

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    move-result v4

    goto/16 :goto_7

    :pswitch_14
    move-object v0, v2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_4
    move v4, v11

    goto/16 :goto_7

    :pswitch_15
    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_5
    move v4, v12

    goto/16 :goto_7

    :pswitch_16
    instance-of v0, v2, Lcom/google/protobuf/Internal$EnumLite;

    if-eqz v0, :cond_5

    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/Internal$EnumLite;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeInt32SizeNoTag(I)I

    move-result v4

    goto/16 :goto_7

    :cond_5
    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeInt32SizeNoTag(I)I

    move-result v4

    goto/16 :goto_7

    :pswitch_17
    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    move-result v4

    goto/16 :goto_7

    :pswitch_18
    instance-of v0, v2, Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_6

    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    goto/16 :goto_7

    :cond_6
    move-object v0, v2

    check-cast v0, [B

    array-length v0, v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    move-result v2

    :goto_6
    add-int v4, v2, v0

    goto/16 :goto_7

    :pswitch_19
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/MessageLite;

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    move-result v2

    goto :goto_6

    :pswitch_1a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/MessageLite;

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, v8}, Lcom/google/protobuf/GeneratedMessageLite;->getSerializedSize(Lcom/google/protobuf/Schema;)I

    move-result v4

    goto :goto_7

    :pswitch_1b
    instance-of v0, v2, Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_7

    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    goto :goto_7

    :cond_7
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    goto :goto_7

    :pswitch_1c
    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_7

    :pswitch_1d
    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_5

    :pswitch_1e
    move-object v0, v2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_4

    :pswitch_1f
    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeInt32SizeNoTag(I)I

    move-result v4

    goto :goto_7

    :pswitch_20
    move-object v0, v2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt64SizeNoTag(J)I

    move-result v4

    goto :goto_7

    :pswitch_21
    move-object v0, v2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt64SizeNoTag(J)I

    move-result v4

    goto :goto_7

    :pswitch_22
    move-object v0, v2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_5

    :pswitch_23
    move-object v0, v2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_4

    :goto_7
    add-int/2addr v4, v5

    add-int/2addr v4, v1

    return v4

    :pswitch_data_0
    .packed-switch 0x0
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
    .packed-switch 0x0
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

.method public static writeTo(Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;Lcom/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p1, Lcom/google/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lcom/google/protobuf/FieldSet;->writeElement(Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/google/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    const/4 p2, 0x2

    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/FieldSet;->writeElement(Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    return-void
.end method
