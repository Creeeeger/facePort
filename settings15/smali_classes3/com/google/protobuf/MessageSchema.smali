.class public final Lcom/google/protobuf/MessageSchema;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/protobuf/Schema;


# static fields
.field public static final EMPTY_INT_ARRAY:[I

.field public static final UNSAFE:Lsun/misc/Unsafe;


# instance fields
.field public final buffer:[I

.field public final checkInitializedCount:I

.field public final defaultInstance:Lcom/google/protobuf/MessageLite;

.field public final intArray:[I

.field public final listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

.field public final mapFieldSchema:Lcom/google/protobuf/MapFieldSchemaLite;

.field public final maxFieldNumber:I

.field public final minFieldNumber:I

.field public final newInstanceSchema:Lcom/google/protobuf/NewInstanceSchemaLite;

.field public final objects:[Ljava/lang/Object;

.field public final proto3:Z

.field public final repeatedFieldOffsetStart:I

.field public final unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    :try_start_0
    new-instance v0, Lcom/google/protobuf/UnsafeUtil$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/protobuf/MessageLite;Z[IIILcom/google/protobuf/NewInstanceSchemaLite;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchemaLite;Lcom/google/protobuf/MapFieldSchemaLite;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    iput-object p2, p0, Lcom/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/protobuf/MessageSchema;->minFieldNumber:I

    iput p4, p0, Lcom/google/protobuf/MessageSchema;->maxFieldNumber:I

    instance-of p1, p5, Lcom/google/protobuf/GeneratedMessageLite;

    iput-boolean p6, p0, Lcom/google/protobuf/MessageSchema;->proto3:Z

    iput-object p7, p0, Lcom/google/protobuf/MessageSchema;->intArray:[I

    iput p8, p0, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    iput p9, p0, Lcom/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    iput-object p10, p0, Lcom/google/protobuf/MessageSchema;->newInstanceSchema:Lcom/google/protobuf/NewInstanceSchemaLite;

    iput-object p11, p0, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    iput-object p12, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    iput-object p5, p0, Lcom/google/protobuf/MessageSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    iput-object p14, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchemaLite;

    return-void
.end method

.method public static checkMutable(Ljava/lang/Object;)V
    .locals 3

    invoke-static {p0}, Lcom/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mutating immutable message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeMapEntryValue([BIILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 6

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {p1, p2}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto/16 :goto_3

    :pswitch_2
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {p1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto/16 :goto_3

    :pswitch_3
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeBytes([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    goto/16 :goto_3

    :pswitch_4
    sget-object p3, Lcom/google/protobuf/Protobuf;->INSTANCE:Lcom/google/protobuf/Protobuf;

    invoke-virtual {p3, p4}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p4

    move-object v0, p4

    move-object v1, p3

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/ArrayDecoders;->mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    invoke-interface {p3, p4}, Lcom/google/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    iput-object p4, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto/16 :goto_3

    :pswitch_5
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    goto :goto_3

    :pswitch_6
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto :goto_3

    :pswitch_7
    invoke-static {p1, p0}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32(I[B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    :goto_1
    add-int/lit8 p0, p1, 0x4

    goto :goto_3

    :pswitch_8
    invoke-static {p1, p0}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64(I[B)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    :goto_2
    add-int/lit8 p0, p1, 0x8

    goto :goto_3

    :pswitch_9
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto :goto_3

    :pswitch_a
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto :goto_3

    :pswitch_b
    invoke-static {p1, p0}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32(I[B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto :goto_1

    :pswitch_c
    invoke-static {p1, p0}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64(I[B)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto :goto_2

    :goto_3
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 2

    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    sget-object v1, Lcom/google/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Lcom/google/protobuf/UnknownFieldSetLite;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    :cond_0
    return-object v0
.end method

.method public static isMutable(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/google/protobuf/GeneratedMessageLite;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static newSchema(Lcom/google/protobuf/RawMessageInfo;Lcom/google/protobuf/NewInstanceSchemaLite;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchemaLite;Lcom/google/protobuf/MapFieldSchemaLite;)Lcom/google/protobuf/MessageSchema;
    .locals 34

    move-object/from16 v0, p0

    instance-of v1, v0, Lcom/google/protobuf/RawMessageInfo;

    if-eqz v1, :cond_34

    iget v1, v0, Lcom/google/protobuf/RawMessageInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    sget-object v3, Lcom/google/protobuf/ProtoSyntax;->PROTO3:Lcom/google/protobuf/ProtoSyntax;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/google/protobuf/ProtoSyntax;->PROTO2:Lcom/google/protobuf/ProtoSyntax;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    move v11, v2

    goto :goto_1

    :cond_1
    move v11, v4

    :goto_1
    iget-object v1, v0, Lcom/google/protobuf/RawMessageInfo;->info:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_2

    move v5, v2

    :goto_2
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_3

    move v5, v7

    goto :goto_2

    :cond_2
    move v7, v2

    :cond_3
    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_3
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_4

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_3

    :cond_4
    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    move v5, v10

    :cond_5
    if-nez v7, :cond_6

    sget-object v7, Lcom/google/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    move v9, v4

    move v10, v9

    move v12, v10

    move v14, v12

    move v15, v14

    move-object v13, v7

    move v7, v15

    goto/16 :goto_c

    :cond_6
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_8

    and-int/lit16 v5, v5, 0x1fff

    const/16 v9, 0xd

    :goto_4
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_7

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_4

    :cond_7
    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    move v7, v10

    :cond_8
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_a

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_5
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_9

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v12

    goto :goto_5

    :cond_9
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v12

    :cond_a
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_c

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_6
    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_b

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_6

    :cond_b
    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    move v10, v13

    :cond_c
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_e

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_7
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_7

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_8
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_8

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_9
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_9

    :cond_11
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_12
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_a

    :cond_13
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_14
    add-int/lit8 v16, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_16

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v4, v16

    const/16 v16, 0xd

    :goto_b
    add-int/lit8 v18, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_15

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v16

    or-int/2addr v15, v4

    add-int/lit8 v16, v16, 0xd

    move/from16 v4, v18

    goto :goto_b

    :cond_15
    shl-int v4, v4, v16

    or-int/2addr v15, v4

    move/from16 v16, v18

    :cond_16
    add-int v4, v15, v13

    add-int/2addr v4, v14

    new-array v4, v4, [I

    mul-int/lit8 v14, v5, 0x2

    add-int/2addr v14, v7

    move v7, v13

    move-object v13, v4

    move v4, v5

    move/from16 v5, v16

    :goto_c
    sget-object v8, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, v0, Lcom/google/protobuf/RawMessageInfo;->defaultInstance:Lcom/google/protobuf/MessageLite;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    mul-int/lit8 v6, v12, 0x3

    new-array v6, v6, [I

    mul-int/lit8 v12, v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    add-int v20, v15, v7

    move/from16 v22, v15

    move/from16 v23, v20

    const/4 v7, 0x0

    const/16 v21, 0x0

    :goto_d
    if-ge v5, v3, :cond_33

    add-int/lit8 v24, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v25, v3

    const v3, 0xd800

    if-lt v5, v3, :cond_18

    and-int/lit16 v5, v5, 0x1fff

    move/from16 v3, v24

    const/16 v24, 0xd

    :goto_e
    add-int/lit8 v26, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v27, v15

    const v15, 0xd800

    if-lt v3, v15, :cond_17

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v24

    or-int/2addr v5, v3

    add-int/lit8 v24, v24, 0xd

    move/from16 v3, v26

    move/from16 v15, v27

    goto :goto_e

    :cond_17
    shl-int v3, v3, v24

    or-int/2addr v5, v3

    move/from16 v3, v26

    goto :goto_f

    :cond_18
    move/from16 v27, v15

    move/from16 v3, v24

    :goto_f
    add-int/lit8 v15, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v24, v15

    const v15, 0xd800

    if-lt v3, v15, :cond_1a

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v15, v24

    const/16 v24, 0xd

    :goto_10
    add-int/lit8 v26, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v28, v10

    const v10, 0xd800

    if-lt v15, v10, :cond_19

    and-int/lit16 v10, v15, 0x1fff

    shl-int v10, v10, v24

    or-int/2addr v3, v10

    add-int/lit8 v24, v24, 0xd

    move/from16 v15, v26

    move/from16 v10, v28

    goto :goto_10

    :cond_19
    shl-int v10, v15, v24

    or-int/2addr v3, v10

    move/from16 v15, v26

    goto :goto_11

    :cond_1a
    move/from16 v28, v10

    move/from16 v15, v24

    :goto_11
    and-int/lit16 v10, v3, 0xff

    move/from16 v24, v9

    and-int/lit16 v9, v3, 0x400

    if-eqz v9, :cond_1b

    add-int/lit8 v9, v7, 0x1

    aput v21, v13, v7

    move v7, v9

    :cond_1b
    iget-object v9, v0, Lcom/google/protobuf/RawMessageInfo;->objects:[Ljava/lang/Object;

    move/from16 v30, v7

    const/16 v7, 0x33

    if-lt v10, v7, :cond_23

    add-int/lit8 v7, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v26, v7

    const v7, 0xd800

    if-lt v15, v7, :cond_1d

    and-int/lit16 v15, v15, 0x1fff

    const/16 v31, 0xd

    move/from16 v33, v26

    move/from16 v26, v15

    move/from16 v15, v33

    :goto_12
    add-int/lit8 v32, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_1c

    and-int/lit16 v7, v15, 0x1fff

    shl-int v7, v7, v31

    or-int v26, v26, v7

    add-int/lit8 v31, v31, 0xd

    move/from16 v15, v32

    const v7, 0xd800

    goto :goto_12

    :cond_1c
    shl-int v7, v15, v31

    or-int v15, v26, v7

    move/from16 v7, v32

    goto :goto_13

    :cond_1d
    move/from16 v7, v26

    :goto_13
    move/from16 v26, v7

    add-int/lit8 v7, v10, -0x33

    const/16 v0, 0x9

    if-eq v7, v0, :cond_1f

    const/16 v0, 0x11

    if-ne v7, v0, :cond_1e

    goto :goto_15

    :cond_1e
    const/16 v0, 0xc

    if-ne v7, v0, :cond_20

    if-nez v11, :cond_20

    div-int/lit8 v0, v21, 0x3

    mul-int/lit8 v0, v0, 0x2

    const/4 v7, 0x1

    add-int/2addr v0, v7

    add-int/lit8 v7, v14, 0x1

    aget-object v14, v9, v14

    aput-object v14, v12, v0

    :goto_14
    move v14, v7

    goto :goto_16

    :cond_1f
    :goto_15
    div-int/lit8 v0, v21, 0x3

    mul-int/lit8 v0, v0, 0x2

    const/4 v7, 0x1

    add-int/2addr v0, v7

    add-int/lit8 v7, v14, 0x1

    aget-object v14, v9, v14

    aput-object v14, v12, v0

    goto :goto_14

    :cond_20
    :goto_16
    mul-int/lit8 v15, v15, 0x2

    aget-object v0, v9, v15

    instance-of v7, v0, Ljava/lang/reflect/Field;

    if-eqz v7, :cond_21

    check-cast v0, Ljava/lang/reflect/Field;

    :goto_17
    move/from16 v31, v5

    move-object v7, v6

    goto :goto_18

    :cond_21
    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/google/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    aput-object v0, v9, v15

    goto :goto_17

    :goto_18
    invoke-virtual {v8, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v0, v5

    add-int/lit8 v15, v15, 0x1

    aget-object v5, v9, v15

    instance-of v6, v5, Ljava/lang/reflect/Field;

    if-eqz v6, :cond_22

    check-cast v5, Ljava/lang/reflect/Field;

    goto :goto_19

    :cond_22
    check-cast v5, Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/google/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    aput-object v5, v9, v15

    :goto_19
    invoke-virtual {v8, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v5, v5

    move-object v9, v1

    move v1, v5

    move/from16 v19, v14

    move/from16 v15, v26

    const/4 v14, 0x0

    const/16 v18, 0x1

    move v5, v0

    const v0, 0xd800

    goto/16 :goto_25

    :cond_23
    move/from16 v31, v5

    move-object v7, v6

    add-int/lit8 v0, v14, 0x1

    aget-object v5, v9, v14

    check-cast v5, Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/google/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/16 v6, 0x9

    if-eq v10, v6, :cond_24

    const/16 v6, 0x11

    if-ne v10, v6, :cond_25

    :cond_24
    const/16 v18, 0x1

    goto :goto_1e

    :cond_25
    const/16 v6, 0x1b

    if-eq v10, v6, :cond_26

    const/16 v6, 0x31

    if-ne v10, v6, :cond_27

    :cond_26
    const/16 v18, 0x1

    goto :goto_1d

    :cond_27
    const/16 v6, 0xc

    if-eq v10, v6, :cond_2b

    const/16 v6, 0x1e

    if-eq v10, v6, :cond_2b

    const/16 v6, 0x2c

    if-ne v10, v6, :cond_28

    goto :goto_1b

    :cond_28
    const/16 v6, 0x32

    if-ne v10, v6, :cond_29

    add-int/lit8 v6, v22, 0x1

    aput v21, v13, v22

    div-int/lit8 v22, v21, 0x3

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v29, v14, 0x2

    aget-object v0, v9, v0

    aput-object v0, v12, v22

    and-int/lit16 v0, v3, 0x800

    if-eqz v0, :cond_2a

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v0, v14, 0x3

    aget-object v14, v9, v29

    aput-object v14, v12, v22

    move/from16 v22, v6

    :cond_29
    :goto_1a
    const/16 v18, 0x1

    goto :goto_1f

    :cond_2a
    move/from16 v22, v6

    move/from16 v0, v29

    goto :goto_1a

    :cond_2b
    :goto_1b
    if-nez v11, :cond_29

    div-int/lit8 v6, v21, 0x3

    mul-int/lit8 v6, v6, 0x2

    const/16 v18, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v14, v14, 0x2

    aget-object v0, v9, v0

    aput-object v0, v12, v6

    :goto_1c
    move v0, v14

    goto :goto_1f

    :goto_1d
    div-int/lit8 v6, v21, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v14, v14, 0x2

    aget-object v0, v9, v0

    aput-object v0, v12, v6

    goto :goto_1c

    :goto_1e
    div-int/lit8 v6, v21, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v12, v6

    :goto_1f
    invoke-virtual {v8, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v5, v5

    and-int/lit16 v6, v3, 0x1000

    const/16 v14, 0x1000

    if-ne v6, v14, :cond_2f

    const/16 v6, 0x11

    if-gt v10, v6, :cond_2f

    add-int/lit8 v6, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const v15, 0xd800

    if-lt v14, v15, :cond_2d

    and-int/lit16 v14, v14, 0x1fff

    const/16 v19, 0xd

    :goto_20
    add-int/lit8 v29, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v15, :cond_2c

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v19

    or-int/2addr v14, v6

    add-int/lit8 v19, v19, 0xd

    move/from16 v6, v29

    goto :goto_20

    :cond_2c
    shl-int v6, v6, v19

    or-int/2addr v14, v6

    goto :goto_21

    :cond_2d
    move/from16 v29, v6

    :goto_21
    mul-int/lit8 v6, v4, 0x2

    div-int/lit8 v19, v14, 0x20

    add-int v19, v19, v6

    aget-object v6, v9, v19

    instance-of v15, v6, Ljava/lang/reflect/Field;

    if-eqz v15, :cond_2e

    check-cast v6, Ljava/lang/reflect/Field;

    :goto_22
    move/from16 v19, v0

    move-object v9, v1

    goto :goto_23

    :cond_2e
    check-cast v6, Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/google/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    aput-object v6, v9, v19

    goto :goto_22

    :goto_23
    invoke-virtual {v8, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    rem-int/lit8 v14, v14, 0x20

    move v1, v0

    move/from16 v15, v29

    const v0, 0xd800

    goto :goto_24

    :cond_2f
    move/from16 v19, v0

    move-object v9, v1

    const v0, 0xd800

    const v1, 0xfffff

    const/4 v14, 0x0

    :goto_24
    const/16 v6, 0x12

    if-lt v10, v6, :cond_30

    const/16 v6, 0x31

    if-gt v10, v6, :cond_30

    add-int/lit8 v6, v23, 0x1

    aput v5, v13, v23

    move/from16 v23, v6

    :cond_30
    :goto_25
    add-int/lit8 v6, v21, 0x1

    aput v31, v7, v21

    add-int/lit8 v26, v21, 0x2

    and-int/lit16 v0, v3, 0x200

    if-eqz v0, :cond_31

    const/high16 v0, 0x20000000

    goto :goto_26

    :cond_31
    const/4 v0, 0x0

    :goto_26
    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_32

    const/high16 v3, 0x10000000

    goto :goto_27

    :cond_32
    const/4 v3, 0x0

    :goto_27
    or-int/2addr v0, v3

    shl-int/lit8 v3, v10, 0x14

    or-int/2addr v0, v3

    or-int/2addr v0, v5

    aput v0, v7, v6

    add-int/lit8 v21, v21, 0x3

    shl-int/lit8 v0, v14, 0x14

    or-int/2addr v0, v1

    aput v0, v7, v26

    move-object/from16 v0, p0

    move-object v6, v7

    move-object v1, v9

    move v5, v15

    move/from16 v14, v19

    move/from16 v9, v24

    move/from16 v3, v25

    move/from16 v15, v27

    move/from16 v10, v28

    move/from16 v7, v30

    goto/16 :goto_d

    :cond_33
    move-object v7, v6

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v27, v15

    new-instance v0, Lcom/google/protobuf/MessageSchema;

    move-object/from16 v1, p0

    iget-object v10, v1, Lcom/google/protobuf/RawMessageInfo;->defaultInstance:Lcom/google/protobuf/MessageLite;

    move-object v5, v0

    move-object v6, v7

    move-object v7, v12

    move/from16 v8, v24

    move/from16 v9, v28

    move-object v12, v13

    move/from16 v13, v27

    move/from16 v14, v20

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v5 .. v19}, Lcom/google/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILcom/google/protobuf/MessageLite;Z[IIILcom/google/protobuf/NewInstanceSchemaLite;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchemaLite;Lcom/google/protobuf/MapFieldSchemaLite;)V

    return-object v0

    :cond_34
    move-object v1, v0

    invoke-static/range {p0 .. p0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static oneofIntAt(JLjava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static oneofLongAt(JLjava/lang/Object;)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Field "

    const-string v3, " for "

    invoke-static {v2, p1, v3}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static type(I)I
    .locals 1

    const/high16 v0, 0xff00000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method

.method public static writeString(ILjava/lang/Object;Lcom/google/protobuf/CodedOutputStreamWriter;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    iget-object p2, p2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    const/4 v0, 0x2

    invoke-virtual {p2, p0, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeStringNoTag(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/google/protobuf/ByteString;

    invoke-virtual {p2, p0, p1}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result p2

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result p0

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 11

    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v5

    const v6, 0xfffff

    and-int v7, v5, v6

    int-to-long v7, v7

    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    add-int/lit8 v5, v3, 0x2

    aget v5, v0, v5

    and-int/2addr v5, v6

    int-to-long v5, v5

    invoke-static {v5, v6, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v9

    invoke-static {v5, v6, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v5

    if-ne v9, v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :cond_0
    move v4, v2

    goto/16 :goto_1

    :pswitch_1
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1

    :pswitch_2
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_0

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_0

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_0

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_0

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->getBoolean(JLjava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->getBoolean(JLjava/lang/Object;)Z

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_0

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_0

    goto :goto_1

    :pswitch_11
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    goto :goto_1

    :pswitch_12
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->getFloat(JLjava/lang/Object;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->getFloat(JLjava/lang/Object;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->getDouble(JLjava/lang/Object;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->getDouble(JLjava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    :goto_1
    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    check-cast p0, Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object p0, p2, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    aget-object p0, p0, p1

    check-cast p0, Lcom/google/protobuf/Internal$EnumVerifier;

    return-object p0
.end method

.method public final getMapFieldDefaultEntry(I)Ljava/lang/Object;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final getMessageFieldSchema(I)Lcom/google/protobuf/Schema;
    .locals 2

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    aget-object v0, p0, p1

    check-cast v0, Lcom/google/protobuf/Schema;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/protobuf/Protobuf;->INSTANCE:Lcom/google/protobuf/Protobuf;

    add-int/lit8 v1, p1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v0

    aput-object v0, p0, p1

    return-object v0
.end method

.method public final getSerializedSize(Ljava/lang/Object;)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x3f

    iget-boolean v5, v0, Lcom/google/protobuf/MessageSchema;->proto3:Z

    iget-object v6, v0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    iget-object v7, v0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchemaLite;

    const/4 v8, 0x1

    const v9, 0xfffff

    iget-object v10, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    if-eqz v5, :cond_8

    sget-object v5, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    array-length v14, v10

    if-ge v12, v14, :cond_7

    invoke-virtual {v0, v12}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v14

    invoke-static {v14}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v15

    aget v11, v10, v12

    and-int/2addr v14, v9

    int-to-long v3, v14

    sget-object v14, Lcom/google/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/google/protobuf/FieldType;

    invoke-virtual {v14}, Lcom/google/protobuf/FieldType;->id()I

    move-result v14

    if-lt v15, v14, :cond_0

    sget-object v14, Lcom/google/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    invoke-virtual {v14}, Lcom/google/protobuf/FieldType;->id()I

    move-result v14

    if-gt v15, v14, :cond_0

    add-int/lit8 v14, v12, 0x2

    aget v14, v10, v14

    :cond_0
    packed-switch v15, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    invoke-virtual {v0, v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-virtual {v0, v12}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    move-result v3

    :goto_1
    add-int/2addr v13, v3

    goto/16 :goto_a

    :pswitch_1
    invoke-virtual {v0, v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v11

    shl-long v14, v3, v8

    shr-long/2addr v3, v2

    xor-long/2addr v3, v14

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt64SizeNoTag(J)I

    move-result v3

    :goto_2
    add-int/2addr v3, v11

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0, v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v4

    shl-int/lit8 v11, v3, 0x1

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v11

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    move-result v3

    :goto_3
    add-int/2addr v3, v4

    goto :goto_1

    :pswitch_3
    invoke-virtual {v0, v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x8

    invoke-static {v11, v3, v13}, Lcom/google/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v13

    goto/16 :goto_a

    :pswitch_4
    invoke-virtual {v0, v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x4

    invoke-static {v11, v3, v13}, Lcom/google/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v13

    goto/16 :goto_a

    :pswitch_5
    invoke-virtual {v0, v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeInt32SizeNoTag(I)I

    move-result v3

    goto :goto_3

    :pswitch_6
    invoke-virtual {v0, v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    move-result v3

    goto :goto_3

    :pswitch_7
    invoke-virtual {v0, v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-static {v11, v3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {v0, v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v12}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v4

    sget-object v14, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v11

    check-cast v3, Lcom/google/protobuf/AbstractMessageLite;

    invoke-virtual {v3, v4}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/google/protobuf/Schema;)I

    move-result v3

    invoke-static {v3, v3, v11, v13}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v13

    goto/16 :goto_a

    :pswitch_9
    invoke-virtual {v0, v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/protobuf/ByteString;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-static {v11, v3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    :goto_4
    add-int/2addr v3, v13

    move v13, v3

    goto/16 :goto_a

    :cond_1
    check-cast v3, Ljava/lang/String;

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v3

    :goto_5
    add-int/2addr v3, v4

    goto :goto_4

    :pswitch_a
    invoke-virtual {v0, v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v11, v8, v13}, Lcom/google/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v13

    goto/16 :goto_a

    :pswitch_b
    invoke-virtual {v0, v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeFixed32Size(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {v0, v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeFixed64Size(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {v0, v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeInt32SizeNoTag(I)I

    move-result v3

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {v0, v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v11

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt64SizeNoTag(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {v0, v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v11

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt64SizeNoTag(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {v0, v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x4

    invoke-static {v11, v3, v13}, Lcom/google/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v13

    goto/16 :goto_a

    :pswitch_11
    invoke-virtual {v0, v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x8

    invoke-static {v11, v3, v13}, Lcom/google/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v13

    goto/16 :goto_a

    :pswitch_12
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v12}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v3, v4}, Lcom/google/protobuf/MapFieldSchemaLite;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_13
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v12}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v4

    sget-object v14, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_2

    const/16 v16, 0x0

    goto :goto_7

    :cond_2
    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_6
    if-ge v15, v14, :cond_3

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    check-cast v9, Lcom/google/protobuf/MessageLite;

    invoke-static {v11, v9, v4}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    move-result v9

    add-int v16, v9, v16

    add-int/2addr v15, v8

    const v9, 0xfffff

    goto :goto_6

    :cond_3
    :goto_7
    add-int v13, v16, v13

    goto/16 :goto_a

    :pswitch_14
    invoke-virtual {v5, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_6

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v4

    invoke-static {v3, v4, v3, v13}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v13

    goto/16 :goto_a

    :pswitch_15
    invoke-virtual {v5, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_6

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v4

    invoke-static {v3, v4, v3, v13}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v13

    goto/16 :goto_a

    :pswitch_16
    invoke-virtual {v5, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_6

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v4

    invoke-static {v3, v4, v3, v13}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v13

    goto/16 :goto_a

    :pswitch_17
    invoke-virtual {v5, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_6

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v4

    invoke-static {v3, v4, v3, v13}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v13

    goto/16 :goto_a

    :pswitch_18
    invoke-virtual {v5, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_6

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v4

    invoke-static {v3, v4, v3, v13}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v13

    goto/16 :goto_a

    :pswitch_19
    invoke-virtual {v5, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_6

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v4

    invoke-static {v3, v4, v3, v13}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v13

    goto/16 :goto_a

    :pswitch_1a
    invoke-virtual {v5, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v4

    invoke-static {v3, v4, v3, v13}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v13

    goto/16 :goto_a

    :pswitch_1b
    invoke-virtual {v5, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_6

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v4

    invoke-static {v3, v4, v3, v13}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v13

    goto/16 :goto_a

    :pswitch_1c
    invoke-virtual {v5, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_6

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v4

    invoke-static {v3, v4, v3, v13}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v13

    goto/16 :goto_a

    :pswitch_1d
    invoke-virtual {v5, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_6

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v4

    invoke-static {v3, v4, v3, v13}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v13

    goto/16 :goto_a

    :pswitch_1e
    invoke-virtual {v5, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_6

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v4

    invoke-static {v3, v4, v3, v13}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v13

    goto/16 :goto_a

    :pswitch_1f
    invoke-virtual {v5, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_6

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v4

    invoke-static {v3, v4, v3, v13}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v13

    goto/16 :goto_a

    :pswitch_20
    invoke-virtual {v5, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_6

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v4

    invoke-static {v3, v4, v3, v13}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v13

    goto/16 :goto_a

    :pswitch_21
    invoke-virtual {v5, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_6

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v4

    invoke-static {v3, v4, v3, v13}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v13

    goto/16 :goto_a

    :pswitch_22
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt64List(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_23
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt32List(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_24
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_25
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_26
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeEnumList(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_27
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt32List(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_28
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeByteStringList(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_29
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v12}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeMessageList(ILjava/util/List;Lcom/google/protobuf/Schema;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2a
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeStringList(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2b
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    const/4 v4, 0x0

    goto :goto_8

    :cond_4
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v4

    add-int/2addr v4, v8

    mul-int/2addr v4, v3

    :goto_8
    add-int/2addr v13, v4

    goto/16 :goto_a

    :pswitch_2c
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2d
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2e
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt32List(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2f
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt64List(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_30
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt64List(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_31
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_32
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_33
    invoke-virtual {v0, v12, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-virtual {v0, v12}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_34
    invoke-virtual {v0, v12, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v9

    shl-long v14, v3, v8

    shr-long/2addr v3, v2

    xor-long/2addr v3, v14

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt64SizeNoTag(J)I

    move-result v3

    :goto_9
    add-int/2addr v3, v9

    goto/16 :goto_1

    :pswitch_35
    invoke-virtual {v0, v12, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v4

    shl-int/lit8 v9, v3, 0x1

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v9

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    move-result v3

    goto/16 :goto_3

    :pswitch_36
    invoke-virtual {v0, v12, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x8

    invoke-static {v11, v3, v13}, Lcom/google/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v13

    goto/16 :goto_a

    :pswitch_37
    invoke-virtual {v0, v12, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x4

    invoke-static {v11, v3, v13}, Lcom/google/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v13

    goto/16 :goto_a

    :pswitch_38
    invoke-virtual {v0, v12, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeInt32SizeNoTag(I)I

    move-result v3

    goto/16 :goto_3

    :pswitch_39
    invoke-virtual {v0, v12, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    move-result v3

    goto/16 :goto_3

    :pswitch_3a
    invoke-virtual {v0, v12, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-static {v11, v3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_3b
    invoke-virtual {v0, v12, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v12}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v4

    sget-object v9, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v9

    check-cast v3, Lcom/google/protobuf/AbstractMessageLite;

    invoke-virtual {v3, v4}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/google/protobuf/Schema;)I

    move-result v3

    invoke-static {v3, v3, v9, v13}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v13

    goto/16 :goto_a

    :pswitch_3c
    invoke-virtual {v0, v12, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/protobuf/ByteString;

    if-eqz v4, :cond_5

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-static {v11, v3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    goto/16 :goto_4

    :cond_5
    check-cast v3, Ljava/lang/String;

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_5

    :pswitch_3d
    invoke-virtual {v0, v12, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v11, v8, v13}, Lcom/google/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v13

    goto :goto_a

    :pswitch_3e
    invoke-virtual {v0, v12, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeFixed32Size(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_3f
    invoke-virtual {v0, v12, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeFixed64Size(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_40
    invoke-virtual {v0, v12, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeInt32SizeNoTag(I)I

    move-result v3

    goto/16 :goto_3

    :pswitch_41
    invoke-virtual {v0, v12, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v9

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt64SizeNoTag(J)I

    move-result v3

    goto/16 :goto_9

    :pswitch_42
    invoke-virtual {v0, v12, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v9

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt64SizeNoTag(J)I

    move-result v3

    goto/16 :goto_9

    :pswitch_43
    invoke-virtual {v0, v12, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x4

    invoke-static {v11, v3, v13}, Lcom/google/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v13

    goto :goto_a

    :pswitch_44
    invoke-virtual {v0, v12, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x8

    invoke-static {v11, v3, v13}, Lcom/google/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v13

    :cond_6
    :goto_a
    add-int/lit8 v12, v12, 0x3

    const v9, 0xfffff

    goto/16 :goto_0

    :cond_7
    check-cast v6, Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v1

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v0

    add-int/2addr v0, v13

    goto/16 :goto_23

    :cond_8
    sget-object v3, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v9, 0xfffff

    const/4 v11, 0x0

    :goto_b
    array-length v12, v10

    if-ge v4, v12, :cond_15

    invoke-virtual {v0, v4}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v12

    aget v13, v10, v4

    invoke-static {v12}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v14

    const/16 v15, 0x11

    if-gt v14, v15, :cond_9

    add-int/lit8 v15, v4, 0x2

    aget v15, v10, v15

    const v16, 0xfffff

    and-int v2, v15, v16

    ushr-int/lit8 v15, v15, 0x14

    shl-int v15, v8, v15

    if-eq v2, v9, :cond_a

    int-to-long v8, v2

    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    move v9, v2

    goto :goto_c

    :cond_9
    const v16, 0xfffff

    const/4 v15, 0x0

    :cond_a
    :goto_c
    and-int v2, v12, v16

    move v12, v9

    int-to-long v8, v2

    packed-switch v14, :pswitch_data_1

    goto :goto_e

    :pswitch_45
    invoke-virtual {v0, v13, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {v0, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v8

    invoke-static {v13, v2, v8}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    move-result v2

    :goto_d
    add-int/2addr v5, v2

    :cond_b
    :goto_e
    const/4 v2, 0x1

    :goto_f
    const/4 v8, 0x4

    :goto_10
    const/16 v9, 0x8

    :goto_11
    const/16 v17, 0x3f

    goto/16 :goto_22

    :pswitch_46
    invoke-virtual {v0, v13, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v8, v9, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v2

    const/4 v13, 0x1

    shl-long v14, v8, v13

    const/16 v13, 0x3f

    shr-long/2addr v8, v13

    xor-long/2addr v8, v14

    invoke-static {v8, v9}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt64SizeNoTag(J)I

    move-result v8

    :goto_12
    add-int/2addr v8, v2

    :goto_13
    add-int/2addr v5, v8

    goto :goto_e

    :pswitch_47
    invoke-virtual {v0, v13, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v8, v9, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v8

    const/4 v9, 0x1

    shl-int/lit8 v13, v2, 0x1

    shr-int/lit8 v2, v2, 0x1f

    xor-int/2addr v2, v13

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    move-result v2

    :goto_14
    add-int/2addr v2, v8

    goto :goto_d

    :pswitch_48
    invoke-virtual {v0, v13, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v2, 0x8

    invoke-static {v13, v2, v5}, Lcom/google/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v5

    :goto_15
    move v9, v2

    const/4 v2, 0x1

    const/4 v8, 0x4

    goto :goto_11

    :pswitch_49
    invoke-virtual {v0, v13, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x4

    invoke-static {v13, v2, v5}, Lcom/google/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v5

    :goto_16
    move v8, v2

    const/4 v2, 0x1

    goto :goto_10

    :pswitch_4a
    invoke-virtual {v0, v13, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v8, v9, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v8

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeInt32SizeNoTag(I)I

    move-result v2

    goto :goto_14

    :pswitch_4b
    invoke-virtual {v0, v13, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v8, v9, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v8

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    move-result v2

    goto :goto_14

    :pswitch_4c
    invoke-virtual {v0, v13, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-static {v13, v2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    goto/16 :goto_d

    :pswitch_4d
    invoke-virtual {v0, v13, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v8

    sget-object v9, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v9

    check-cast v2, Lcom/google/protobuf/AbstractMessageLite;

    invoke-virtual {v2, v8}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/google/protobuf/Schema;)I

    move-result v2

    invoke-static {v2, v2, v9, v5}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_e

    :pswitch_4e
    invoke-virtual {v0, v13, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    instance-of v8, v2, Lcom/google/protobuf/ByteString;

    if-eqz v8, :cond_c

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-static {v13, v2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    :goto_17
    add-int/2addr v2, v5

    move v5, v2

    goto/16 :goto_e

    :cond_c
    check-cast v2, Ljava/lang/String;

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v8

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v8

    goto :goto_17

    :pswitch_4f
    invoke-virtual {v0, v13, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    invoke-static {v13, v2, v5}, Lcom/google/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v5

    goto/16 :goto_f

    :pswitch_50
    invoke-virtual {v0, v13, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeFixed32Size(I)I

    move-result v2

    goto/16 :goto_d

    :pswitch_51
    invoke-virtual {v0, v13, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeFixed64Size(I)I

    move-result v2

    goto/16 :goto_d

    :pswitch_52
    invoke-virtual {v0, v13, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v8, v9, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v8

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeInt32SizeNoTag(I)I

    move-result v2

    goto/16 :goto_14

    :pswitch_53
    invoke-virtual {v0, v13, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v8, v9, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v2

    invoke-static {v8, v9}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt64SizeNoTag(J)I

    move-result v8

    goto/16 :goto_12

    :pswitch_54
    invoke-virtual {v0, v13, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v8, v9, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v2

    invoke-static {v8, v9}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt64SizeNoTag(J)I

    move-result v8

    goto/16 :goto_12

    :pswitch_55
    invoke-virtual {v0, v13, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x4

    invoke-static {v13, v2, v5}, Lcom/google/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v5

    goto/16 :goto_16

    :pswitch_56
    invoke-virtual {v0, v13, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v2, 0x8

    invoke-static {v13, v2, v5}, Lcom/google/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v5

    goto/16 :goto_15

    :pswitch_57
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v2, v8}, Lcom/google/protobuf/MapFieldSchemaLite;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    goto/16 :goto_d

    :pswitch_58
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v8

    sget-object v9, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_d

    const/4 v15, 0x0

    goto :goto_19

    :cond_d
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_18
    if-ge v14, v9, :cond_e

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v2

    move-object/from16 v2, v18

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v13, v2, v8}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    move-result v2

    add-int/2addr v15, v2

    const/4 v2, 0x1

    add-int/2addr v14, v2

    move-object/from16 v2, v19

    goto :goto_18

    :cond_e
    :goto_19
    add-int/2addr v5, v15

    goto/16 :goto_e

    :pswitch_59
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_b

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v8

    invoke-static {v2, v8, v2, v5}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_e

    :pswitch_5a
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_b

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v8

    invoke-static {v2, v8, v2, v5}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_e

    :pswitch_5b
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_b

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v8

    invoke-static {v2, v8, v2, v5}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_e

    :pswitch_5c
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_b

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v8

    invoke-static {v2, v8, v2, v5}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_e

    :pswitch_5d
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_b

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v8

    invoke-static {v2, v8, v2, v5}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_e

    :pswitch_5e
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_b

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v8

    invoke-static {v2, v8, v2, v5}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_e

    :pswitch_5f
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    sget-object v8, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v8

    invoke-static {v2, v8, v2, v5}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_e

    :pswitch_60
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_b

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v8

    invoke-static {v2, v8, v2, v5}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_e

    :pswitch_61
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_b

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v8

    invoke-static {v2, v8, v2, v5}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_e

    :pswitch_62
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_b

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v8

    invoke-static {v2, v8, v2, v5}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_e

    :pswitch_63
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_b

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v8

    invoke-static {v2, v8, v2, v5}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_e

    :pswitch_64
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_b

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v8

    invoke-static {v2, v8, v2, v5}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_e

    :pswitch_65
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_b

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v8

    invoke-static {v2, v8, v2, v5}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_e

    :pswitch_66
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_b

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v8

    invoke-static {v2, v8, v2, v5}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_e

    :pswitch_67
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v13, v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt64List(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_d

    :pswitch_68
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v13, v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt32List(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_d

    :pswitch_69
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v13, v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_d

    :pswitch_6a
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v13, v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_d

    :pswitch_6b
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v13, v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeEnumList(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_d

    :pswitch_6c
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v13, v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt32List(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_d

    :pswitch_6d
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v13, v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeByteStringList(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_d

    :pswitch_6e
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v8

    invoke-static {v13, v2, v8}, Lcom/google/protobuf/SchemaUtil;->computeSizeMessageList(ILjava/util/List;Lcom/google/protobuf/Schema;)I

    move-result v2

    goto/16 :goto_d

    :pswitch_6f
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v13, v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeStringList(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_d

    :pswitch_70
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    sget-object v8, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_f

    const/4 v8, 0x0

    goto/16 :goto_13

    :cond_f
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    mul-int/2addr v8, v2

    goto/16 :goto_13

    :pswitch_71
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v13, v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_d

    :pswitch_72
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v13, v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_d

    :pswitch_73
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v13, v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt32List(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_d

    :pswitch_74
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v13, v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt64List(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_d

    :pswitch_75
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v13, v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt64List(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_d

    :pswitch_76
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v13, v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_d

    :pswitch_77
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v13, v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_d

    :pswitch_78
    and-int v2, v11, v15

    if-eqz v2, :cond_b

    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {v0, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v8

    invoke-static {v13, v2, v8}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    move-result v2

    goto/16 :goto_d

    :pswitch_79
    and-int v2, v11, v15

    if-eqz v2, :cond_13

    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v2

    const/4 v13, 0x1

    shl-long v14, v8, v13

    const/16 v17, 0x3f

    shr-long v8, v8, v17

    xor-long/2addr v8, v14

    invoke-static {v8, v9}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt64SizeNoTag(J)I

    move-result v8

    add-int/2addr v8, v2

    add-int/2addr v5, v8

    :cond_10
    :goto_1a
    const/4 v2, 0x1

    :cond_11
    :goto_1b
    const/4 v8, 0x4

    :cond_12
    :goto_1c
    const/16 v9, 0x8

    goto/16 :goto_22

    :cond_13
    const/16 v17, 0x3f

    goto :goto_1a

    :pswitch_7a
    const/16 v17, 0x3f

    and-int v2, v11, v15

    if-eqz v2, :cond_10

    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v8

    const/4 v9, 0x1

    shl-int/lit8 v13, v2, 0x1

    shr-int/lit8 v2, v2, 0x1f

    xor-int/2addr v2, v13

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    move-result v2

    :goto_1d
    add-int/2addr v2, v8

    :goto_1e
    add-int/2addr v5, v2

    goto :goto_1a

    :pswitch_7b
    const/16 v17, 0x3f

    and-int v2, v11, v15

    if-eqz v2, :cond_10

    const/16 v2, 0x8

    invoke-static {v13, v2, v5}, Lcom/google/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v5

    move v9, v2

    const/4 v2, 0x1

    const/4 v8, 0x4

    goto/16 :goto_22

    :pswitch_7c
    const/16 v17, 0x3f

    and-int v2, v11, v15

    if-eqz v2, :cond_10

    const/4 v2, 0x4

    invoke-static {v13, v2, v5}, Lcom/google/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v5

    move v8, v2

    const/4 v2, 0x1

    goto :goto_1c

    :pswitch_7d
    const/16 v17, 0x3f

    and-int v2, v11, v15

    if-eqz v2, :cond_10

    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v8

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeInt32SizeNoTag(I)I

    move-result v2

    goto :goto_1d

    :pswitch_7e
    const/16 v17, 0x3f

    and-int v2, v11, v15

    if-eqz v2, :cond_10

    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v8

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    move-result v2

    goto :goto_1d

    :pswitch_7f
    const/16 v17, 0x3f

    and-int v2, v11, v15

    if-eqz v2, :cond_10

    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-static {v13, v2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    goto :goto_1e

    :pswitch_80
    const/16 v17, 0x3f

    and-int v2, v11, v15

    if-eqz v2, :cond_10

    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v8

    sget-object v9, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v9

    check-cast v2, Lcom/google/protobuf/AbstractMessageLite;

    invoke-virtual {v2, v8}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/google/protobuf/Schema;)I

    move-result v2

    invoke-static {v2, v2, v9, v5}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_1a

    :pswitch_81
    const/16 v17, 0x3f

    and-int v2, v11, v15

    if-eqz v2, :cond_10

    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    instance-of v8, v2, Lcom/google/protobuf/ByteString;

    if-eqz v8, :cond_14

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-static {v13, v2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    :goto_1f
    add-int/2addr v2, v5

    move v5, v2

    goto/16 :goto_1a

    :cond_14
    check-cast v2, Ljava/lang/String;

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v8

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v8

    goto :goto_1f

    :pswitch_82
    const/16 v17, 0x3f

    and-int v2, v11, v15

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    invoke-static {v13, v2, v5}, Lcom/google/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v5

    goto/16 :goto_1b

    :pswitch_83
    const/4 v2, 0x1

    const/16 v17, 0x3f

    and-int v8, v11, v15

    if-eqz v8, :cond_11

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeFixed32Size(I)I

    move-result v8

    :goto_20
    add-int/2addr v5, v8

    goto/16 :goto_1b

    :pswitch_84
    const/4 v2, 0x1

    const/16 v17, 0x3f

    and-int v8, v11, v15

    if-eqz v8, :cond_11

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeFixed64Size(I)I

    move-result v8

    goto :goto_20

    :pswitch_85
    const/4 v2, 0x1

    const/16 v17, 0x3f

    and-int v14, v11, v15

    if-eqz v14, :cond_11

    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v8, v9

    goto :goto_20

    :pswitch_86
    const/4 v2, 0x1

    const/16 v17, 0x3f

    and-int v14, v11, v15

    if-eqz v14, :cond_11

    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v13

    invoke-static {v8, v9}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt64SizeNoTag(J)I

    move-result v8

    :goto_21
    add-int/2addr v8, v13

    goto :goto_20

    :pswitch_87
    const/4 v2, 0x1

    const/16 v17, 0x3f

    and-int v14, v11, v15

    if-eqz v14, :cond_11

    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v13

    invoke-static {v8, v9}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt64SizeNoTag(J)I

    move-result v8

    goto :goto_21

    :pswitch_88
    const/4 v2, 0x1

    const/16 v17, 0x3f

    and-int v8, v11, v15

    if-eqz v8, :cond_11

    const/4 v8, 0x4

    invoke-static {v13, v8, v5}, Lcom/google/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v5

    goto/16 :goto_1c

    :pswitch_89
    const/4 v2, 0x1

    const/4 v8, 0x4

    const/16 v17, 0x3f

    and-int v9, v11, v15

    if-eqz v9, :cond_12

    const/16 v9, 0x8

    invoke-static {v13, v9, v5}, Lcom/google/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v5

    :goto_22
    add-int/lit8 v4, v4, 0x3

    move v8, v2

    move v9, v12

    move/from16 v2, v17

    goto/16 :goto_b

    :cond_15
    check-cast v6, Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v1

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v0

    add-int/2addr v0, v5

    :goto_23
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
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
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final hashCode(Ljava/lang/Object;)I
    .locals 11

    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v4

    aget v5, v0, v2

    const v6, 0xfffff

    and-int/2addr v6, v4

    int-to-long v6, v6

    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v4

    const/16 v8, 0x4d5

    const/16 v9, 0x4cf

    const/16 v10, 0x25

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v4, v3

    move v3, v4

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v4

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v4

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v5, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    :goto_2
    move v8, v9

    :cond_0
    add-int/2addr v8, v3

    move v3, v8

    goto/16 :goto_4

    :pswitch_b
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_14
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    :cond_1
    :goto_3
    mul-int/lit8 v3, v3, 0x35

    add-int/2addr v3, v10

    goto/16 :goto_4

    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1c
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->getBoolean(JLjava/lang/Object;)Z

    move-result v4

    sget-object v5, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->getFloat(JLjava/lang/Object;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->getDouble(JLjava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v4

    goto/16 :goto_1

    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v3, v3, 0x35

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    check-cast p0, Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object p0, p1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0}, Lcom/google/protobuf/UnknownFieldSetLite;->hashCode()I

    move-result p0

    add-int/2addr p0, v3

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
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
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
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
.end method

.method public final isFieldPresent(ILjava/lang/Object;)Z
    .locals 7

    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    aget v0, v1, v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_11

    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result p0

    and-int p1, p0, v1

    int-to-long v0, p1

    invoke-static {p0}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result p0

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    move v5, v6

    :cond_0
    return v5

    :pswitch_1
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    move v5, v6

    :cond_1
    return v5

    :pswitch_2
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_2

    move v5, v6

    :cond_2
    return v5

    :pswitch_3
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    move v5, v6

    :cond_3
    return v5

    :pswitch_4
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_4

    move v5, v6

    :cond_4
    return v5

    :pswitch_5
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_5

    move v5, v6

    :cond_5
    return v5

    :pswitch_6
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_6

    move v5, v6

    :cond_6
    return v5

    :pswitch_7
    sget-object p0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v6

    return p0

    :pswitch_8
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_7

    move v5, v6

    :cond_7
    return v5

    :pswitch_9
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_8

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v6

    return p0

    :cond_8
    instance-of p1, p0, Lcom/google/protobuf/ByteString;

    if-eqz p1, :cond_9

    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v6

    return p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_a
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->getBoolean(JLjava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_b
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_a

    move v5, v6

    :cond_a
    return v5

    :pswitch_c
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_b

    move v5, v6

    :cond_b
    return v5

    :pswitch_d
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_c

    move v5, v6

    :cond_c
    return v5

    :pswitch_e
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_d

    move v5, v6

    :cond_d
    return v5

    :pswitch_f
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_e

    move v5, v6

    :cond_e
    return v5

    :pswitch_10
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->getFloat(JLjava/lang/Object;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    if-eqz p0, :cond_f

    move v5, v6

    :cond_f
    return v5

    :pswitch_11
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->getDouble(JLjava/lang/Object;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_10

    move v5, v6

    :cond_10
    return v5

    :cond_11
    ushr-int/lit8 p0, v0, 0x14

    shl-int p0, v6, p0

    invoke-static {v2, v3, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_12

    move v5, v6

    :cond_12
    return v5

    nop

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
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 13

    const v0, 0xfffff

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    :goto_0
    iget v5, p0, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_12

    iget-object v5, p0, Lcom/google/protobuf/MessageSchema;->intArray:[I

    aget v5, v5, v2

    iget-object v7, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    aget v8, v7, v5

    invoke-virtual {p0, v5}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v9

    add-int/lit8 v10, v5, 0x2

    aget v7, v7, v10

    and-int v10, v7, v0

    ushr-int/lit8 v7, v7, 0x14

    shl-int v7, v6, v7

    if-eq v10, v3, :cond_1

    if-eq v10, v0, :cond_0

    sget-object v3, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    int-to-long v11, v10

    invoke-virtual {v3, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :cond_0
    move v3, v10

    :cond_1
    const/high16 v10, 0x10000000

    and-int/2addr v10, v9

    if-eqz v10, :cond_4

    if-ne v3, v0, :cond_2

    invoke-virtual {p0, v5, p1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v10

    goto :goto_1

    :cond_2
    and-int v10, v4, v7

    if-eqz v10, :cond_3

    move v10, v6

    goto :goto_1

    :cond_3
    move v10, v1

    :goto_1
    if-nez v10, :cond_4

    return v1

    :cond_4
    invoke-static {v9}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v10

    const/16 v11, 0x9

    if-eq v10, v11, :cond_e

    const/16 v11, 0x11

    if-eq v10, v11, :cond_e

    const/16 v6, 0x1b

    if-eq v10, v6, :cond_b

    const/16 v6, 0x3c

    if-eq v10, v6, :cond_a

    const/16 v6, 0x44

    if-eq v10, v6, :cond_a

    const/16 v6, 0x31

    if-eq v10, v6, :cond_b

    const/16 v6, 0x32

    if-eq v10, v6, :cond_5

    goto/16 :goto_4

    :cond_5
    and-int v6, v9, v0

    int-to-long v6, v6

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchemaLite;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    goto/16 :goto_4

    :cond_6
    invoke-virtual {p0, v5}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/MapEntryLite;

    iget-object v5, v5, Lcom/google/protobuf/MapEntryLite;->metadata:Lcom/google/protobuf/MapEntryLite$Metadata;

    iget-object v5, v5, Lcom/google/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v5}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v5

    sget-object v7, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-eq v5, v7, :cond_7

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_9

    sget-object v6, Lcom/google/protobuf/Protobuf;->INSTANCE:Lcom/google/protobuf/Protobuf;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v6

    :cond_9
    invoke-interface {v6, v7}, Lcom/google/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    return v1

    :cond_a
    invoke-virtual {p0, v8, v5, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {p0, v5}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v5

    and-int v6, v9, v0

    int-to-long v6, v6

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    return v1

    :cond_b
    and-int v6, v9, v0

    int-to-long v6, v6

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {p0, v5}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v5

    move v7, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_11

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Lcom/google/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    return v1

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_e
    if-ne v3, v0, :cond_f

    invoke-virtual {p0, v5, p1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v6

    goto :goto_3

    :cond_f
    and-int/2addr v7, v4

    if-eqz v7, :cond_10

    goto :goto_3

    :cond_10
    move v6, v1

    :goto_3
    if-eqz v6, :cond_11

    invoke-virtual {p0, v5}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v5

    and-int v6, v9, v0

    int-to-long v6, v6

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    return v1

    :cond_11
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_12
    return v6
.end method

.method public final isOneofPresent(IILjava/lang/Object;)Z
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    invoke-static {v0, v1, p3}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final makeImmutable(Ljava/lang/Object;)V
    .locals 8

    invoke-static {p1}, Lcom/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/GeneratedMessageLite;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite;->setMemoizedSerializedSize(I)V

    iput v1, v0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->markImmutable()V

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v3

    const v4, 0xfffff

    and-int/2addr v4, v3

    int-to-long v4, v4

    invoke-static {v3}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v3

    const/16 v6, 0x9

    if-eq v3, v6, :cond_2

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v3, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchemaLite;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v7, v6

    check-cast v7, Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v7}, Lcom/google/protobuf/MapFieldLite;->makeImmutable()V

    invoke-virtual {v3, p1, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    invoke-virtual {v3, v4, v5, p1}, Lcom/google/protobuf/ListFieldSchema;->makeImmutableListAt(JLjava/lang/Object;)V

    goto :goto_1

    :cond_2
    :pswitch_2
    invoke-virtual {p0, v2, p1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v3

    sget-object v6, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v6, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    check-cast p0, Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object p0, p1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    iput-boolean v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->isMutable:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11

    invoke-static {p1}, Lcom/google/protobuf/MessageSchema;->checkMutable(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v2

    const v3, 0xfffff

    and-int v4, v2, v3

    int-to-long v7, v4

    aget v4, v1, v0

    invoke-static {v2}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/MessageSchema;->mergeOneofMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, v4, v0, p2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v8, p1, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    and-int/2addr v1, v3

    int-to-long v1, v1

    invoke-static {p1, v1, v2, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/MessageSchema;->mergeOneofMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, v4, v0, p2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v8, p1, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    and-int/2addr v1, v3

    int-to-long v1, v1

    invoke-static {p1, v1, v2, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1

    :pswitch_4
    sget-object v1, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchemaLite;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/google/protobuf/MapFieldSchemaLite;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;

    move-result-object v1

    invoke-static {v7, v8, p1, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    invoke-virtual {v1, v7, v8, p1, p2}, Lcom/google/protobuf/ListFieldSchema;->mergeListsAt(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/MessageSchema;->mergeMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v9

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    iget-object v5, v1, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v7, v8, v1}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v9

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    iget-object v5, v1, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v7, v8, v1}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v7, v8, v1}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v7, v8, v1}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v8, p1, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/MessageSchema;->mergeMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v8, p1, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    invoke-virtual {v1, v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->getBoolean(JLjava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, p1, v7, v8, v2}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->putBoolean(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v7, v8, v1}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v9

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    iget-object v5, v1, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v7, v8, v1}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v9

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    iget-object v5, v1, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v9

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    iget-object v5, v1, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_16
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    invoke-virtual {v1, v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->getFloat(JLjava/lang/Object;)F

    move-result v2

    invoke-virtual {v1, p1, v7, v8, v2}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->putFloat(Ljava/lang/Object;JF)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_17
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v5, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->getDouble(JLjava/lang/Object;)D

    move-result-wide v9

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->putDouble(Ljava/lang/Object;JD)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/SchemaUtil;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final mergeFrom(Ljava/lang/Object;[BIILcom/google/protobuf/ArrayDecoders$Registers;)V
    .locals 29

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    iget-boolean v0, v15, Lcom/google/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_18

    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/MessageSchema;->checkMutable(Ljava/lang/Object;)V

    sget-object v9, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    move/from16 v0, p3

    move v2, v10

    move v5, v2

    const/4 v1, -0x1

    const v6, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_15

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v3, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v3, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    move v4, v0

    move/from16 v16, v3

    goto :goto_1

    :cond_0
    move/from16 v16, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v3, v16, 0x3

    and-int/lit8 v0, v16, 0x7

    iget v7, v15, Lcom/google/protobuf/MessageSchema;->maxFieldNumber:I

    iget v8, v15, Lcom/google/protobuf/MessageSchema;->minFieldNumber:I

    if-le v3, v1, :cond_2

    div-int/lit8 v2, v2, 0x3

    if-lt v3, v8, :cond_1

    if-gt v3, v7, :cond_1

    invoke-virtual {v15, v3, v2}, Lcom/google/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result v1

    goto :goto_2

    :cond_1
    const/4 v1, -0x1

    :goto_2
    move v8, v1

    const/4 v7, -0x1

    goto :goto_3

    :cond_2
    if-lt v3, v8, :cond_1

    if-gt v3, v7, :cond_1

    invoke-virtual {v15, v3, v10}, Lcom/google/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result v1

    goto :goto_2

    :goto_3
    if-ne v8, v7, :cond_3

    move/from16 v17, v3

    move v2, v4

    move/from16 v28, v5

    move/from16 v19, v7

    move-object/from16 v27, v9

    move/from16 v18, v10

    move/from16 v20, v18

    goto/16 :goto_12

    :cond_3
    add-int/lit8 v1, v8, 0x1

    iget-object v2, v15, Lcom/google/protobuf/MessageSchema;->buffer:[I

    aget v1, v2, v1

    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v13

    const v17, 0xfffff

    and-int v7, v1, v17

    move/from16 v19, v3

    move/from16 p3, v4

    int-to-long v3, v7

    const/16 v7, 0x11

    if-gt v13, v7, :cond_c

    add-int/lit8 v7, v8, 0x2

    aget v2, v2, v7

    ushr-int/lit8 v7, v2, 0x14

    const/4 v10, 0x1

    shl-int v7, v10, v7

    const v10, 0xfffff

    and-int/2addr v2, v10

    if-eq v2, v6, :cond_6

    if-eq v6, v10, :cond_4

    int-to-long v10, v6

    invoke-virtual {v9, v14, v10, v11, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v10, 0xfffff

    :cond_4
    if-eq v2, v10, :cond_5

    int-to-long v5, v2

    invoke-virtual {v9, v14, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    :cond_5
    move v11, v2

    :goto_4
    move v6, v5

    goto :goto_5

    :cond_6
    move v11, v6

    goto :goto_4

    :goto_5
    const/4 v2, 0x5

    packed-switch v13, :pswitch_data_0

    move/from16 v10, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    goto/16 :goto_c

    :pswitch_0
    if-nez v0, :cond_7

    move/from16 v5, p3

    move-object/from16 v13, p5

    invoke-static {v12, v5, v13}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v16

    iget-wide v0, v13, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v21

    move-object v0, v9

    move-object/from16 v1, p1

    move/from16 v17, v19

    move-wide v2, v3

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v6, v7

    move v2, v8

    move v6, v11

    move-object v11, v13

    move/from16 v0, v16

    :goto_6
    move/from16 v1, v17

    const/4 v10, 0x0

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_7
    move-object/from16 v13, p5

    move/from16 v17, v19

    move/from16 v10, p3

    goto/16 :goto_c

    :pswitch_1
    move/from16 v5, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    if-nez v0, :cond_8

    invoke-static {v12, v5, v13}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v13, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_7
    or-int v5, v6, v7

    move v2, v8

    :goto_8
    move v6, v11

    move-object v11, v13

    goto :goto_6

    :cond_8
    move v10, v5

    goto/16 :goto_c

    :pswitch_2
    move/from16 v5, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    if-nez v0, :cond_8

    invoke-static {v12, v5, v13}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v13, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_3
    move/from16 v5, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    invoke-static {v12, v5, v13}, Lcom/google/protobuf/ArrayDecoders;->decodeBytes([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-object v1, v13, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_4
    move/from16 v5, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    invoke-virtual {v15, v8, v14}, Lcom/google/protobuf/MessageSchema;->mutableMessageFieldForMerge(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v15, v8}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v1

    move-object v0, v4

    move-object/from16 v2, p2

    move v3, v5

    move-object v5, v4

    move/from16 v4, p4

    move-object v10, v5

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/ArrayDecoders;->mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    invoke-virtual {v15, v8, v14, v10}, Lcom/google/protobuf/MessageSchema;->storeMessageField(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    :pswitch_5
    move/from16 v5, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    const/high16 v0, 0x20000000

    and-int/2addr v0, v1

    if-nez v0, :cond_9

    invoke-static {v12, v5, v13}, Lcom/google/protobuf/ArrayDecoders;->decodeString([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_9

    :cond_9
    invoke-static {v12, v5, v13}, Lcom/google/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    :goto_9
    iget-object v1, v13, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_6
    move/from16 v5, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    if-nez v0, :cond_8

    invoke-static {v12, v5, v13}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-wide v1, v13, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v23, 0x0

    cmp-long v1, v1, v23

    if-eqz v1, :cond_a

    const/4 v10, 0x1

    goto :goto_a

    :cond_a
    const/4 v10, 0x0

    :goto_a
    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    invoke-virtual {v1, v14, v3, v4, v10}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->putBoolean(Ljava/lang/Object;JZ)V

    goto/16 :goto_7

    :pswitch_7
    move/from16 v5, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    if-ne v0, v2, :cond_8

    invoke-static {v5, v12}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32(I[B)I

    move-result v0

    invoke-virtual {v9, v14, v3, v4, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v5, 0x4

    goto/16 :goto_7

    :pswitch_8
    move/from16 v5, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    invoke-static {v5, v12}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64(I[B)J

    move-result-wide v21

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide v2, v3

    move v10, v5

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_b
    add-int/lit8 v0, v10, 0x8

    goto/16 :goto_7

    :pswitch_9
    move/from16 v10, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    if-nez v0, :cond_b

    invoke-static {v12, v10, v13}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v13, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_7

    :pswitch_a
    move/from16 v10, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    if-nez v0, :cond_b

    invoke-static {v12, v10, v13}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v10

    iget-wide v1, v13, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    move-object v0, v9

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v6, v7

    move v2, v8

    move v0, v10

    goto/16 :goto_8

    :pswitch_b
    move/from16 v10, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    if-ne v0, v2, :cond_b

    invoke-static {v10, v12}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    invoke-virtual {v1, v14, v3, v4, v0}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->putFloat(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v10, 0x4

    goto/16 :goto_7

    :pswitch_c
    move/from16 v10, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    invoke-static {v10, v12}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v21

    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->putDouble(Ljava/lang/Object;JD)V

    goto :goto_b

    :cond_b
    :goto_c
    move/from16 v28, v6

    move/from16 v18, v8

    move-object/from16 v27, v9

    move v2, v10

    move v6, v11

    const/16 v19, -0x1

    const/16 v20, 0x0

    goto/16 :goto_12

    :cond_c
    move/from16 v10, p3

    move/from16 v17, v19

    const/16 v2, 0x1b

    if-ne v13, v2, :cond_10

    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    invoke-virtual {v9, v14, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Internal$ProtobufList;

    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/AbstractProtobufList;

    iget-boolean v1, v1, Lcom/google/protobuf/AbstractProtobufList;->isMutable:Z

    if-nez v1, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xa

    goto :goto_d

    :cond_d
    mul-int/lit8 v1, v1, 0x2

    :goto_d
    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v9, v14, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_e
    move-object v7, v0

    invoke-virtual {v15, v8}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v0

    move/from16 v1, v16

    move-object/from16 v2, p2

    move v3, v10

    move/from16 v4, p4

    move v11, v5

    move-object v5, v7

    move v7, v6

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/ArrayDecoders;->decodeMessageList(Lcom/google/protobuf/Schema;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move/from16 v13, p4

    move v6, v7

    move v2, v8

    move v5, v11

    move/from16 v1, v17

    const/4 v10, 0x0

    move-object/from16 v11, p5

    goto/16 :goto_0

    :cond_f
    move/from16 v28, v5

    move/from16 v26, v6

    move/from16 v18, v8

    move-object/from16 v27, v9

    move v15, v10

    const/16 v19, -0x1

    const/16 v20, 0x0

    goto/16 :goto_11

    :cond_10
    move v11, v5

    move v7, v6

    const/16 v2, 0x31

    if-gt v13, v2, :cond_12

    int-to-long v5, v1

    move v2, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 p3, v2

    move-object/from16 v2, p2

    move-wide/from16 v22, v3

    move v3, v10

    move/from16 v4, p4

    move-wide/from16 v24, v5

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v26, v7

    const v15, 0xfffff

    const/16 v18, -0x1

    move/from16 v7, p3

    move/from16 v19, v18

    move/from16 v18, v8

    move-object/from16 v27, v9

    move v15, v10

    const/16 v20, 0x0

    move-wide/from16 v9, v24

    move/from16 v28, v11

    move v11, v13

    move-wide/from16 v12, v22

    move-object/from16 v14, p5

    invoke-virtual/range {v0 .. v14}, Lcom/google/protobuf/MessageSchema;->parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v15, :cond_11

    :goto_e
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v10, v20

    move/from16 v6, v26

    :goto_f
    move-object/from16 v9, v27

    move/from16 v5, v28

    goto/16 :goto_0

    :cond_11
    move v2, v0

    :goto_10
    move/from16 v6, v26

    goto/16 :goto_12

    :cond_12
    move/from16 p3, v0

    move-wide/from16 v22, v3

    move/from16 v26, v7

    move/from16 v18, v8

    move-object/from16 v27, v9

    move v15, v10

    move/from16 v28, v11

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v0, 0x32

    if-ne v13, v0, :cond_14

    move/from16 v7, p3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v18

    move-wide/from16 v6, v22

    move-object/from16 v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/google/protobuf/MessageSchema;->parseMapField(Ljava/lang/Object;[BIIIJLcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v15, :cond_11

    goto :goto_e

    :cond_13
    :goto_11
    move v2, v15

    goto :goto_10

    :cond_14
    move/from16 v7, p3

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v16

    move/from16 v6, v17

    move v9, v13

    move-wide/from16 v10, v22

    move/from16 v12, v18

    move-object/from16 v13, p5

    invoke-virtual/range {v0 .. v13}, Lcom/google/protobuf/MessageSchema;->parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v15, :cond_11

    goto :goto_e

    :goto_12
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v4

    move/from16 v0, v16

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v10, v20

    goto :goto_f

    :cond_15
    move/from16 v28, v5

    move v11, v6

    move-object/from16 v27, v9

    const v1, 0xfffff

    if-eq v11, v1, :cond_16

    int-to-long v1, v11

    move-object/from16 v3, p1

    move-object/from16 v4, v27

    move/from16 v5, v28

    invoke-virtual {v4, v3, v1, v2, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_16
    move/from16 v4, p4

    if-ne v0, v4, :cond_17

    goto :goto_13

    :cond_17
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_18
    move v4, v13

    move-object v3, v14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/protobuf/MessageSchema;->parseProto2Message(Ljava/lang/Object;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    :goto_13
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final mergeMessage(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v2, p3, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object p3

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, p2, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v4

    invoke-interface {p3, v4, v3}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p3}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v0, v1, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p1

    :cond_3
    invoke-interface {p3, p0, v3}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    aget p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is present but null: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final mergeOneofMessage(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    aget v1, v0, p1

    invoke-virtual {p0, v1, p1, p3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v4, v2

    sget-object v2, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v2, p3, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object p3

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v2, p2, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    invoke-interface {p3, p0, v6}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v4, v5, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    add-int/lit8 p1, p1, 0x2

    aget p0, v0, p1

    and-int/2addr p0, v3

    int-to-long p0, p0

    invoke-static {p2, p0, p1, v1}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    return-void

    :cond_2
    invoke-virtual {v2, p2, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p3}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v4, v5, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p1

    :cond_3
    invoke-interface {p3, p0, v6}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget p1, v0, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final mutableMessageFieldForMerge(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v0}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final mutableOneofMessageFieldForMerge(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p1, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result p0

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v1, p0

    invoke-virtual {p1, p3, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final newInstance()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->newInstanceSchema:Lcom/google/protobuf/NewInstanceSchemaLite;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod$1()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite;

    return-object p0
.end method

.method public final parseMapField(Ljava/lang/Object;[BIIIJLcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move/from16 v7, p4

    move-wide/from16 v2, p6

    move-object/from16 v8, p8

    sget-object v4, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    move/from16 v5, p5

    invoke-virtual {v0, v5}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    iget-object v0, v0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchemaLite;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v9

    check-cast v0, Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    const/4 v10, 0x1

    xor-int/2addr v0, v10

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/protobuf/MapFieldLite;->EMPTY_MAP_FIELD:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/google/protobuf/MapFieldSchemaLite;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v4, v1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v9, v0

    :cond_0
    check-cast v5, Lcom/google/protobuf/MapEntryLite;

    iget-object v11, v5, Lcom/google/protobuf/MapEntryLite;->metadata:Lcom/google/protobuf/MapEntryLite$Metadata;

    check-cast v9, Lcom/google/protobuf/MapFieldLite;

    move/from16 v0, p3

    invoke-static {v6, v0, v8}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v1, :cond_7

    sub-int v2, v7, v0

    if-gt v1, v2, :cond_7

    add-int v12, v0, v1

    iget-object v1, v11, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    iget-object v13, v11, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    move-object v14, v1

    move-object v15, v13

    :goto_0
    if-ge v0, v12, :cond_5

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v6, v0

    if-gez v0, :cond_1

    invoke-static {v0, v6, v1, v8}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    move/from16 v16, v1

    move v1, v0

    move/from16 v0, v16

    :cond_1
    ushr-int/lit8 v2, v0, 0x3

    and-int/lit8 v3, v0, 0x7

    if-eq v2, v10, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, v11, Lcom/google/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v2}, Lcom/google/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v2

    if-ne v3, v2, :cond_4

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v3, v11, Lcom/google/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    move-object/from16 v0, p2

    move/from16 v2, p4

    move-object/from16 v5, p8

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->decodeMapEntryValue([BIILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-object v15, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v2, v11, Lcom/google/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v2}, Lcom/google/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v2

    if-ne v3, v2, :cond_4

    iget-object v3, v11, Lcom/google/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move/from16 v2, p4

    move-object/from16 v5, p8

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->decodeMapEntryValue([BIILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-object v14, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    :goto_1
    invoke-static {v0, v6, v1, v7, v8}, Lcom/google/protobuf/ArrayDecoders;->skipField(I[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_0

    :cond_5
    if-ne v0, v12, :cond_6

    invoke-virtual {v9, v14, v15}, Lcom/google/protobuf/MapFieldLite;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v12

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v2, p5

    move/from16 v9, p6

    move/from16 v3, p7

    move-wide/from16 v6, p10

    move/from16 v10, p12

    move-object/from16 v11, p13

    sget-object v12, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    add-int/lit8 v13, v10, 0x2

    iget-object v14, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    aget v8, v14, v13

    const v15, 0xfffff

    and-int/2addr v8, v15

    int-to-long v6, v8

    const/4 v8, 0x1

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    const/4 v6, 0x3

    if-ne v3, v6, :cond_6

    invoke-virtual {v0, v9, v10, v1}, Lcom/google/protobuf/MessageSchema;->mutableOneofMessageFieldForMerge(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    invoke-virtual {v0, v10}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageSchema;

    move-object v3, v8

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object v15, v8

    move-object/from16 v8, p13

    invoke-virtual/range {v2 .. v8}, Lcom/google/protobuf/MessageSchema;->parseProto2Message(Ljava/lang/Object;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    iput-object v15, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v0, v10}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    const v3, 0xfffff

    and-int/2addr v0, v3

    int-to-long v4, v0

    invoke-virtual {v12, v1, v4, v5, v15}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    aget v0, v14, v13

    and-int/2addr v0, v3

    int-to-long v3, v0

    invoke-static {v1, v3, v4, v9}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    :goto_0
    move v0, v2

    goto/16 :goto_7

    :pswitch_1
    if-nez v3, :cond_6

    invoke-static {v4, v5, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-wide v2, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-wide v13, v6

    move-wide/from16 v6, p10

    invoke-virtual {v12, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_7

    :pswitch_2
    move-wide v13, v6

    move-wide/from16 v6, p10

    if-nez v3, :cond_6

    invoke-static {v4, v5, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v2, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v2}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_7

    :pswitch_3
    move-wide v13, v6

    move-wide/from16 v6, p10

    if-nez v3, :cond_6

    invoke-static {v4, v5, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    iget v4, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v0, v10}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, v4}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_2
    move v0, v3

    goto/16 :goto_7

    :pswitch_4
    move-wide v13, v6

    const/4 v2, 0x2

    move-wide/from16 v6, p10

    if-ne v3, v2, :cond_6

    invoke-static {v4, v5, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeBytes([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-object v2, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v12, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_7

    :pswitch_5
    const/4 v2, 0x2

    if-ne v3, v2, :cond_6

    invoke-virtual {v0, v9, v10, v1}, Lcom/google/protobuf/MessageSchema;->mutableOneofMessageFieldForMerge(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v10}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v3

    move-object v2, v8

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/ArrayDecoders;->mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    invoke-virtual {v0, v10}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    const v3, 0xfffff

    and-int/2addr v0, v3

    int-to-long v4, v0

    invoke-virtual {v12, v1, v4, v5, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    aget v0, v14, v13

    and-int/2addr v0, v3

    int-to-long v3, v0

    invoke-static {v1, v3, v4, v9}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :pswitch_6
    move-wide v13, v6

    const/4 v0, 0x2

    move-wide/from16 v6, p10

    if-ne v3, v0, :cond_6

    invoke-static {v4, v5, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v2, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-nez v2, :cond_2

    const-string v2, ""

    invoke-virtual {v12, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :cond_2
    const/high16 v3, 0x20000000

    and-int v3, p8, v3

    if-eqz v3, :cond_4

    add-int v3, v0, v2

    sget-object v5, Lcom/google/protobuf/Utf8;->processor:Lcom/google/protobuf/Utf8$SafeProcessor;

    invoke-virtual {v5, v4, v0, v3}, Lcom/google/protobuf/Utf8$SafeProcessor;->isValidUtf8([BII)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_4
    :goto_3
    new-instance v3, Ljava/lang/String;

    sget-object v5, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v0, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v12, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v0, v2

    :goto_4
    invoke-virtual {v12, v1, v13, v14, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_7

    :pswitch_7
    move-wide v13, v6

    move-wide/from16 v6, p10

    if-nez v3, :cond_6

    invoke-static {v4, v5, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-wide v2, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    :goto_5
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v12, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_7

    :pswitch_8
    move-wide v13, v6

    const/4 v0, 0x5

    move-wide/from16 v6, p10

    if-ne v3, v0, :cond_6

    invoke-static {v5, v4}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x4

    invoke-virtual {v12, v1, v13, v14, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_7

    :pswitch_9
    move-wide v13, v6

    move-wide/from16 v6, p10

    if-ne v3, v8, :cond_6

    invoke-static {v5, v4}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64(I[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x8

    invoke-virtual {v12, v1, v13, v14, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_a
    move-wide v13, v6

    move-wide/from16 v6, p10

    if-nez v3, :cond_6

    invoke-static {v4, v5, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v2, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_b
    move-wide v13, v6

    move-wide/from16 v6, p10

    if-nez v3, :cond_6

    invoke-static {v4, v5, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-wide v2, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_c
    move-wide v13, v6

    const/4 v0, 0x5

    move-wide/from16 v6, p10

    if-ne v3, v0, :cond_6

    invoke-static {v5, v4}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v12, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x4

    invoke-virtual {v12, v1, v13, v14, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_d
    move-wide v13, v6

    move-wide/from16 v6, p10

    if-ne v3, v8, :cond_6

    invoke-static {v5, v4}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64(I[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v12, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x8

    invoke-virtual {v12, v1, v13, v14, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :cond_6
    :goto_6
    move v0, v5

    :goto_7
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final parseProto2Message(Ljava/lang/Object;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move/from16 v14, p4

    move/from16 v12, p5

    move-object/from16 v10, p6

    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/MessageSchema;->checkMutable(Ljava/lang/Object;)V

    sget-object v11, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    move/from16 v1, p3

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    :goto_0
    iget-object v7, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    if-ge v1, v14, :cond_19

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v13, v1

    if-gez v1, :cond_0

    invoke-static {v1, v13, v4, v10}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v4, v10, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    goto :goto_1

    :cond_0
    move/from16 v31, v4

    move v4, v1

    move/from16 v1, v31

    :goto_1
    ushr-int/lit8 v8, v4, 0x3

    and-int/lit8 v9, v4, 0x7

    move/from16 v20, v1

    iget v1, v0, Lcom/google/protobuf/MessageSchema;->maxFieldNumber:I

    move/from16 v21, v4

    iget v4, v0, Lcom/google/protobuf/MessageSchema;->minFieldNumber:I

    if-le v8, v2, :cond_2

    const/4 v2, 0x3

    div-int/2addr v3, v2

    if-lt v8, v4, :cond_1

    if-gt v8, v1, :cond_1

    invoke-virtual {v0, v8, v3}, Lcom/google/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result v1

    goto :goto_2

    :cond_1
    const/4 v1, -0x1

    :goto_2
    move v3, v1

    const/4 v2, -0x1

    const/4 v4, 0x0

    goto :goto_4

    :cond_2
    if-lt v8, v4, :cond_3

    if-gt v8, v1, :cond_3

    const/4 v4, 0x0

    invoke-virtual {v0, v8, v4}, Lcom/google/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    const/4 v1, -0x1

    :goto_3
    move v3, v1

    const/4 v2, -0x1

    :goto_4
    if-ne v3, v2, :cond_4

    move/from16 v19, v4

    move/from16 v22, v19

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v16, v8

    move-object/from16 v30, v11

    move v0, v12

    move/from16 v3, v20

    const/4 v15, 0x2

    const/16 v17, 0x3

    move/from16 v20, v2

    move/from16 v31, v21

    move-object/from16 v21, v7

    move/from16 v7, v31

    goto/16 :goto_18

    :cond_4
    add-int/lit8 v1, v3, 0x1

    aget v1, v7, v1

    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v12

    const v16, 0xfffff

    and-int v2, v1, v16

    move/from16 v18, v1

    int-to-long v1, v2

    const/16 v4, 0x11

    if-gt v12, v4, :cond_e

    add-int/lit8 v4, v3, 0x2

    aget v4, v7, v4

    ushr-int/lit8 v23, v4, 0x14

    move-wide/from16 v24, v1

    const/4 v1, 0x1

    shl-int v23, v1, v23

    const v2, 0xfffff

    and-int/2addr v4, v2

    if-eq v4, v6, :cond_6

    if-eq v6, v2, :cond_5

    int-to-long v1, v6

    invoke-virtual {v11, v15, v1, v2, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_5
    int-to-long v1, v4

    invoke-virtual {v11, v15, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    move/from16 v26, v1

    move/from16 v27, v4

    goto :goto_5

    :cond_6
    move/from16 v26, v5

    move/from16 v27, v6

    :goto_5
    const/4 v1, 0x5

    packed-switch v12, :pswitch_data_0

    move v9, v3

    move/from16 v12, v20

    move/from16 v14, v21

    const/4 v4, 0x3

    const v17, 0xfffff

    const/16 v19, 0x0

    const/16 v20, -0x1

    goto/16 :goto_13

    :pswitch_0
    const/4 v4, 0x3

    if-ne v9, v4, :cond_7

    invoke-virtual {v0, v3, v15}, Lcom/google/protobuf/MessageSchema;->mutableMessageFieldForMerge(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    shl-int/lit8 v1, v8, 0x3

    or-int/lit8 v6, v1, 0x4

    invoke-virtual {v0, v3}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageSchema;

    move/from16 v12, v20

    const/4 v7, -0x1

    const v17, 0xfffff

    move-object v2, v9

    move v5, v3

    move-object/from16 v3, p2

    move/from16 v14, v21

    const/16 v19, 0x0

    move v4, v12

    move v12, v5

    move/from16 v5, p4

    move/from16 v20, v7

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/google/protobuf/MessageSchema;->parseProto2Message(Ljava/lang/Object;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iput-object v9, v10, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v0, v12, v15, v9}, Lcom/google/protobuf/MessageSchema;->storeMessageField(ILjava/lang/Object;Ljava/lang/Object;)V

    or-int v5, v26, v23

    move v2, v8

    move v3, v12

    move v4, v14

    move/from16 v6, v27

    move/from16 v14, p4

    move/from16 v12, p5

    goto/16 :goto_0

    :cond_7
    move/from16 v12, v20

    move/from16 v14, v21

    const v17, 0xfffff

    const/16 v19, 0x0

    const/16 v20, -0x1

    move v9, v3

    goto/16 :goto_13

    :pswitch_1
    move v5, v3

    move/from16 v12, v20

    move/from16 v14, v21

    const/4 v4, 0x3

    const v17, 0xfffff

    const/16 v19, 0x0

    const/16 v20, -0x1

    if-nez v9, :cond_8

    invoke-static {v13, v12, v10}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v7

    iget-wide v1, v10, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v21

    move-wide/from16 v3, v24

    move-object v1, v11

    move-object/from16 v2, p1

    move v9, v5

    move-wide/from16 v5, v21

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_6
    or-int v5, v26, v23

    move/from16 v12, p5

    move v1, v7

    :goto_7
    move v2, v8

    move v3, v9

    :goto_8
    move v4, v14

    :goto_9
    move/from16 v6, v27

    move/from16 v14, p4

    goto/16 :goto_0

    :cond_8
    move v9, v5

    goto/16 :goto_13

    :pswitch_2
    move v6, v3

    move/from16 v12, v20

    move/from16 v14, v21

    move-wide/from16 v2, v24

    const/4 v4, 0x3

    const v17, 0xfffff

    const/16 v19, 0x0

    const/16 v20, -0x1

    if-nez v9, :cond_9

    invoke-static {v13, v12, v10}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v4, v10, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v4}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v4

    invoke-virtual {v11, v15, v2, v3, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_a
    or-int v5, v26, v23

    move/from16 v12, p5

    move v3, v6

    move v2, v8

    goto :goto_8

    :cond_9
    move v9, v6

    goto/16 :goto_13

    :pswitch_3
    move v6, v3

    move/from16 v12, v20

    move/from16 v14, v21

    move-wide/from16 v2, v24

    const/4 v4, 0x3

    const v17, 0xfffff

    const/16 v19, 0x0

    const/16 v20, -0x1

    if-nez v9, :cond_9

    invoke-static {v13, v12, v10}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v4, v10, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v0, v6}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-interface {v5, v4}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_c

    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v2

    int-to-long v3, v4

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    move/from16 v12, p5

    move v3, v6

    move v2, v8

    move v4, v14

    :goto_b
    move/from16 v5, v26

    goto :goto_9

    :cond_b
    :goto_c
    invoke-virtual {v11, v15, v2, v3, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_4
    move v6, v3

    move/from16 v12, v20

    move/from16 v14, v21

    move-wide/from16 v2, v24

    const/4 v1, 0x2

    const/4 v4, 0x3

    const v17, 0xfffff

    const/16 v19, 0x0

    const/16 v20, -0x1

    if-ne v9, v1, :cond_9

    invoke-static {v13, v12, v10}, Lcom/google/protobuf/ArrayDecoders;->decodeBytes([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget-object v4, v10, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v11, v15, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :pswitch_5
    move v6, v3

    move/from16 v12, v20

    move/from16 v14, v21

    const/4 v1, 0x2

    const/4 v4, 0x3

    const v17, 0xfffff

    const/16 v19, 0x0

    const/16 v20, -0x1

    if-ne v9, v1, :cond_9

    invoke-virtual {v0, v6, v15}, Lcom/google/protobuf/MessageSchema;->mutableMessageFieldForMerge(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v2

    move-object v1, v7

    move-object/from16 v3, p2

    move v4, v12

    move/from16 v5, p4

    move v9, v6

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/ArrayDecoders;->mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    invoke-virtual {v0, v9, v15, v7}, Lcom/google/protobuf/MessageSchema;->storeMessageField(ILjava/lang/Object;Ljava/lang/Object;)V

    :goto_d
    or-int v5, v26, v23

    move/from16 v12, p5

    goto/16 :goto_7

    :pswitch_6
    move v5, v3

    move/from16 v12, v20

    move/from16 v14, v21

    move-wide/from16 v2, v24

    const/4 v1, 0x2

    const/4 v4, 0x3

    const v17, 0xfffff

    const/16 v19, 0x0

    const/16 v20, -0x1

    if-ne v9, v1, :cond_8

    const/high16 v1, 0x20000000

    and-int v1, v18, v1

    if-nez v1, :cond_c

    invoke-static {v13, v12, v10}, Lcom/google/protobuf/ArrayDecoders;->decodeString([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto :goto_e

    :cond_c
    invoke-static {v13, v12, v10}, Lcom/google/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    :goto_e
    iget-object v4, v10, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v11, v15, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_f
    or-int v2, v26, v23

    move/from16 v12, p5

    move v3, v5

    move v4, v14

    move/from16 v6, v27

    move/from16 v14, p4

    move v5, v2

    move v2, v8

    goto/16 :goto_0

    :pswitch_7
    move v5, v3

    move/from16 v12, v20

    move/from16 v14, v21

    move-wide/from16 v2, v24

    const/4 v4, 0x3

    const v17, 0xfffff

    const/16 v19, 0x0

    const/16 v20, -0x1

    if-nez v9, :cond_8

    invoke-static {v13, v12, v10}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget-wide v6, v10, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v21, 0x0

    cmp-long v4, v6, v21

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    goto :goto_10

    :cond_d
    move/from16 v4, v19

    :goto_10
    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    invoke-virtual {v6, v15, v2, v3, v4}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->putBoolean(Ljava/lang/Object;JZ)V

    goto :goto_f

    :pswitch_8
    move v5, v3

    move/from16 v12, v20

    move/from16 v14, v21

    move-wide/from16 v2, v24

    const/4 v4, 0x3

    const v17, 0xfffff

    const/16 v19, 0x0

    const/16 v20, -0x1

    if-ne v9, v1, :cond_8

    invoke-static {v12, v13}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32(I[B)I

    move-result v1

    invoke-virtual {v11, v15, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_11
    add-int/lit8 v1, v12, 0x4

    goto :goto_f

    :pswitch_9
    move v5, v3

    move/from16 v12, v20

    move/from16 v14, v21

    move-wide/from16 v2, v24

    const/4 v1, 0x1

    const/4 v4, 0x3

    const v17, 0xfffff

    const/16 v19, 0x0

    const/16 v20, -0x1

    if-ne v9, v1, :cond_8

    invoke-static {v12, v13}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64(I[B)J

    move-result-wide v6

    move-object v1, v11

    move-wide v3, v2

    move-object/from16 v2, p1

    move v9, v5

    move-wide v5, v6

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_12
    add-int/lit8 v1, v12, 0x8

    goto/16 :goto_d

    :pswitch_a
    move v5, v3

    move/from16 v12, v20

    move/from16 v14, v21

    move-wide/from16 v2, v24

    const/4 v4, 0x3

    const v17, 0xfffff

    const/16 v19, 0x0

    const/16 v20, -0x1

    if-nez v9, :cond_8

    invoke-static {v13, v12, v10}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v4, v10, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v11, v15, v2, v3, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_f

    :pswitch_b
    move v5, v3

    move/from16 v12, v20

    move/from16 v14, v21

    move-wide/from16 v2, v24

    const/4 v4, 0x3

    const v17, 0xfffff

    const/16 v19, 0x0

    const/16 v20, -0x1

    if-nez v9, :cond_8

    invoke-static {v13, v12, v10}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v7

    move/from16 v16, v5

    iget-wide v5, v10, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    move-object v1, v11

    move-wide v3, v2

    move-object/from16 v2, p1

    move/from16 v9, v16

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_6

    :pswitch_c
    move v5, v3

    move/from16 v12, v20

    move/from16 v14, v21

    move-wide/from16 v2, v24

    const/4 v4, 0x3

    const v17, 0xfffff

    const/16 v19, 0x0

    const/16 v20, -0x1

    if-ne v9, v1, :cond_8

    invoke-static {v12, v13}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32(I[B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    invoke-virtual {v4, v15, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->putFloat(Ljava/lang/Object;JF)V

    goto/16 :goto_11

    :pswitch_d
    move v5, v3

    move/from16 v12, v20

    move/from16 v14, v21

    move-wide/from16 v2, v24

    const/4 v1, 0x1

    const/4 v4, 0x3

    const v17, 0xfffff

    const/16 v19, 0x0

    const/16 v20, -0x1

    if-ne v9, v1, :cond_8

    invoke-static {v12, v13}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64(I[B)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    move-wide v3, v2

    move-object/from16 v2, p1

    move v9, v5

    move-wide v5, v6

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->putDouble(Ljava/lang/Object;JD)V

    goto/16 :goto_12

    :goto_13
    move/from16 v0, p5

    move/from16 v17, v4

    move-object/from16 v21, v7

    move/from16 v16, v8

    move/from16 v22, v9

    move-object/from16 v30, v11

    move v3, v12

    move v7, v14

    :goto_14
    const/4 v15, 0x2

    goto/16 :goto_18

    :cond_e
    move/from16 v16, v8

    move/from16 v14, v21

    const/4 v4, 0x3

    const v17, 0xfffff

    const/16 v19, 0x0

    move-object/from16 v21, v7

    move-wide v7, v1

    move v2, v3

    move/from16 v3, v20

    const/16 v20, -0x1

    const/16 v1, 0x1b

    if-ne v12, v1, :cond_12

    const/4 v1, 0x2

    if-ne v9, v1, :cond_11

    invoke-virtual {v11, v15, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Internal$ProtobufList;

    move-object v4, v1

    check-cast v4, Lcom/google/protobuf/AbstractProtobufList;

    iget-boolean v4, v4, Lcom/google/protobuf/AbstractProtobufList;->isMutable:Z

    if-nez v4, :cond_10

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_f

    const/16 v4, 0xa

    goto :goto_15

    :cond_f
    mul-int/lit8 v4, v4, 0x2

    :goto_15
    invoke-interface {v1, v4}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    invoke-virtual {v11, v15, v7, v8, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_10
    move-object v7, v1

    invoke-virtual {v0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v1

    move/from16 v22, v2

    move v2, v14

    move v8, v3

    move-object/from16 v3, p2

    move v4, v8

    move/from16 v26, v5

    move/from16 v5, p4

    move/from16 v27, v6

    move-object v6, v7

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/ArrayDecoders;->decodeMessageList(Lcom/google/protobuf/Schema;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    move/from16 v12, p5

    move v4, v14

    move/from16 v2, v16

    move/from16 v3, v22

    goto/16 :goto_b

    :cond_11
    move/from16 v22, v2

    move/from16 v26, v5

    move/from16 v27, v6

    move v15, v1

    move v0, v3

    move/from16 v17, v4

    move-object/from16 v30, v11

    move/from16 p3, v14

    goto/16 :goto_17

    :cond_12
    move/from16 v22, v2

    move/from16 v26, v5

    move/from16 v27, v6

    const/4 v1, 0x2

    move v6, v3

    const/16 v2, 0x31

    if-gt v12, v2, :cond_14

    move/from16 v2, v18

    int-to-long v2, v2

    move/from16 v18, v1

    move-object/from16 v1, p0

    move-wide/from16 v23, v2

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v25, v4

    move v4, v6

    move/from16 v5, p4

    move v0, v6

    move v6, v14

    move-wide/from16 v28, v7

    move/from16 v7, v16

    move v8, v9

    move/from16 v17, v25

    move/from16 v9, v22

    move-object/from16 v30, v11

    move-wide/from16 v10, v23

    move/from16 p3, v14

    move-wide/from16 v13, v28

    move-object/from16 v15, p6

    invoke-virtual/range {v1 .. v15}, Lcom/google/protobuf/MessageSchema;->parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    if-eq v1, v0, :cond_13

    :goto_16
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move/from16 v4, p3

    move/from16 v14, p4

    move/from16 v12, p5

    move-object/from16 v10, p6

    move/from16 v2, v16

    move/from16 v3, v22

    move/from16 v5, v26

    move/from16 v6, v27

    move-object/from16 v11, v30

    goto/16 :goto_0

    :cond_13
    move/from16 v7, p3

    move/from16 v0, p5

    move v3, v1

    goto/16 :goto_14

    :cond_14
    move/from16 v17, v4

    move v0, v6

    move-wide/from16 v28, v7

    move-object/from16 v30, v11

    move/from16 p3, v14

    move/from16 v2, v18

    const/16 v1, 0x32

    if-ne v12, v1, :cond_17

    const/4 v15, 0x2

    if-ne v9, v15, :cond_16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v0

    move/from16 v5, p4

    move/from16 v6, v22

    move-wide/from16 v7, v28

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lcom/google/protobuf/MessageSchema;->parseMapField(Ljava/lang/Object;[BIIIJLcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    if-eq v1, v0, :cond_15

    goto :goto_16

    :cond_15
    move/from16 v7, p3

    move/from16 v0, p5

    move v3, v1

    goto :goto_18

    :cond_16
    :goto_17
    move/from16 v7, p3

    move v3, v0

    move/from16 v0, p5

    goto :goto_18

    :cond_17
    move v10, v2

    const/4 v15, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v0

    move/from16 v5, p4

    move/from16 v6, p3

    move/from16 v7, v16

    move v8, v9

    move v9, v10

    move v10, v12

    move-wide/from16 v11, v28

    move/from16 v13, v22

    move-object/from16 v14, p6

    invoke-virtual/range {v1 .. v14}, Lcom/google/protobuf/MessageSchema;->parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    if-eq v1, v0, :cond_15

    goto :goto_16

    :goto_18
    if-ne v7, v0, :cond_18

    if-eqz v0, :cond_18

    move v1, v3

    move v4, v7

    move/from16 v5, v26

    move/from16 v6, v27

    :goto_19
    const v2, 0xfffff

    goto :goto_1a

    :cond_18
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v5

    move v1, v7

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move/from16 v14, p4

    move-object/from16 v10, p6

    move v12, v0

    move v4, v7

    move/from16 v2, v16

    move/from16 v3, v22

    move/from16 v5, v26

    move/from16 v6, v27

    move-object/from16 v11, v30

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_19
    move/from16 v26, v5

    move/from16 v27, v6

    move-object/from16 v21, v7

    move-object/from16 v30, v11

    move v0, v12

    const/4 v15, 0x2

    const/16 v17, 0x3

    goto :goto_19

    :goto_1a
    if-eq v6, v2, :cond_1a

    int-to-long v6, v6

    move-object/from16 v3, p1

    move-object/from16 v8, v30

    invoke-virtual {v8, v3, v6, v7, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1b

    :cond_1a
    move-object/from16 v3, p1

    :goto_1b
    const/4 v5, 0x0

    move-object/from16 v6, p0

    iget v7, v6, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_1c
    iget v8, v6, Lcom/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    iget-object v9, v6, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    if-ge v7, v8, :cond_22

    iget-object v8, v6, Lcom/google/protobuf/MessageSchema;->intArray:[I

    aget v8, v8, v7

    aget v10, v21, v8

    invoke-virtual {v6, v8}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v11

    and-int/2addr v11, v2

    int-to-long v11, v11

    invoke-static {v11, v12, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_1c

    :cond_1b
    :goto_1d
    move v13, v15

    goto/16 :goto_21

    :cond_1c
    invoke-virtual {v6, v8}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v12

    if-nez v12, :cond_1d

    goto :goto_1d

    :cond_1d
    iget-object v13, v6, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchemaLite;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v11, Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v6, v8}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/protobuf/MapEntryLite;

    iget-object v8, v8, Lcom/google/protobuf/MapEntryLite;->metadata:Lcom/google/protobuf/MapEntryLite$Metadata;

    invoke-virtual {v11}, Lcom/google/protobuf/MapFieldLite;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v12, v14}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v14

    if-nez v14, :cond_21

    if-nez v5, :cond_1f

    move-object v5, v9

    check-cast v5, Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v3

    check-cast v5, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object v14, v5, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    sget-object v2, Lcom/google/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Lcom/google/protobuf/UnknownFieldSetLite;

    if-ne v14, v2, :cond_1e

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v2

    iput-object v2, v5, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    move-object v5, v2

    goto :goto_1f

    :cond_1e
    move-object v5, v14

    :cond_1f
    :goto_1f
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-static {v8, v2, v14}, Lcom/google/protobuf/MapEntryLite;->computeSerializedSize(Lcom/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    new-array v14, v2, [B

    new-instance v15, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    invoke-direct {v15, v2, v14}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;-><init>(I[B)V

    :try_start_0
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v15, v8, v6, v13}, Lcom/google/protobuf/MapEntryLite;->writeTo(Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;Lcom/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget v6, v15, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    sub-int/2addr v2, v6

    if-nez v2, :cond_20

    new-instance v2, Lcom/google/protobuf/ByteString$LiteralByteString;

    invoke-direct {v2, v14}, Lcom/google/protobuf/ByteString$LiteralByteString;-><init>([B)V

    move-object v6, v9

    check-cast v6, Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    shl-int/lit8 v6, v10, 0x3

    const/4 v13, 0x2

    or-int/2addr v6, v13

    invoke-virtual {v5, v6, v2}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_20

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_21
    move v13, v15

    :goto_20
    move-object/from16 v6, p0

    move v15, v13

    const v2, 0xfffff

    goto/16 :goto_1e

    :goto_21
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v6, p0

    move v15, v13

    const v2, 0xfffff

    goto/16 :goto_1c

    :cond_22
    if-eqz v5, :cond_23

    check-cast v9, Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v3

    check-cast v2, Lcom/google/protobuf/GeneratedMessageLite;

    iput-object v5, v2, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    :cond_23
    if-nez v0, :cond_25

    move/from16 v2, p4

    if-ne v1, v2, :cond_24

    goto :goto_22

    :cond_24
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_25
    move/from16 v2, p4

    if-gt v1, v2, :cond_26

    if-ne v4, v0, :cond_26

    :goto_22
    return v1

    :cond_26
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    const/4 v11, 0x1

    sget-object v12, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/protobuf/Internal$ProtobufList;

    move-object v14, v13

    check-cast v14, Lcom/google/protobuf/AbstractProtobufList;

    iget-boolean v14, v14, Lcom/google/protobuf/AbstractProtobufList;->isMutable:Z

    const/4 v15, 0x2

    if-nez v14, :cond_1

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_0

    const/16 v14, 0xa

    goto :goto_0

    :cond_0
    mul-int/2addr v14, v15

    :goto_0
    invoke-interface {v13, v14}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v13

    invoke-virtual {v12, v1, v9, v10, v13}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v9, 0x0

    const-wide/16 v16, 0x0

    const/4 v10, 0x3

    const/4 v12, 0x5

    packed-switch p11, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-ne v6, v10, :cond_3

    invoke-virtual {v0, v8}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v0

    and-int/lit8 v1, v2, -0x8

    or-int/lit8 v1, v1, 0x4

    invoke-interface {v0}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v6

    move-object v8, v0

    check-cast v8, Lcom/google/protobuf/MessageSchema;

    move-object/from16 p6, v8

    move-object/from16 p7, v6

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move/from16 p11, v1

    move-object/from16 p12, p14

    invoke-virtual/range {p6 .. p12}, Lcom/google/protobuf/MessageSchema;->parseProto2Message(Ljava/lang/Object;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    iput-object v6, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-interface {v0, v6}, Lcom/google/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    iput-object v6, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-ge v4, v5, :cond_3

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v6

    iget v9, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq v2, v9, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v4

    move-object/from16 p6, v8

    move-object/from16 p7, v4

    move-object/from16 p8, p2

    move/from16 p9, v6

    move/from16 p10, p4

    move/from16 p11, v1

    move-object/from16 p12, p14

    invoke-virtual/range {p6 .. p12}, Lcom/google/protobuf/MessageSchema;->parseProto2Message(Ljava/lang/Object;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v6

    iput-object v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-interface {v0, v4}, Lcom/google/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    iput-object v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_1

    :cond_3
    :goto_2
    move v0, v4

    goto/16 :goto_24

    :pswitch_1
    if-ne v6, v15, :cond_6

    check-cast v13, Lcom/google/protobuf/LongArrayList;

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, v0

    :goto_3
    if-ge v0, v1, :cond_4

    invoke-static {v3, v0, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-wide v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v4

    invoke-virtual {v13, v4, v5}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_3

    :cond_4
    if-ne v0, v1, :cond_5

    goto/16 :goto_24

    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_6
    if-nez v6, :cond_3

    check-cast v13, Lcom/google/protobuf/LongArrayList;

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-wide v8, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v8, v9}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    :goto_4
    if-ge v0, v5, :cond_4d

    invoke-static {v3, v0, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq v2, v4, :cond_7

    goto/16 :goto_24

    :cond_7
    invoke-static {v3, v1, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-wide v8, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v8, v9}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_4

    :pswitch_2
    if-ne v6, v15, :cond_a

    check-cast v13, Lcom/google/protobuf/IntArrayList;

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, v0

    :goto_5
    if-ge v0, v1, :cond_8

    invoke-static {v3, v0, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v2, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v2}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_5

    :cond_8
    if-ne v0, v1, :cond_9

    goto/16 :goto_24

    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_a
    if-nez v6, :cond_3

    check-cast v13, Lcom/google/protobuf/IntArrayList;

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    :goto_6
    if-ge v0, v5, :cond_4d

    invoke-static {v3, v0, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq v2, v4, :cond_b

    goto/16 :goto_24

    :cond_b
    invoke-static {v3, v1, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_6

    :pswitch_3
    if-ne v6, v15, :cond_e

    move-object v2, v13

    check-cast v2, Lcom/google/protobuf/IntArrayList;

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    iget v5, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v5, v4

    :goto_7
    if-ge v4, v5, :cond_c

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    iget v6, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v2, v6}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_7

    :cond_c
    if-ne v4, v5, :cond_d

    move v2, v4

    goto :goto_8

    :cond_d
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_e
    if-nez v6, :cond_3

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    :goto_8
    invoke-virtual {v0, v8}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    if-nez v3, :cond_f

    goto/16 :goto_c

    :cond_f
    instance-of v4, v13, Ljava/util/RandomAccess;

    sget-object v5, Lcom/google/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Lcom/google/protobuf/UnknownFieldSetLite;

    const/4 v6, 0x0

    iget-object v0, v0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    if-eqz v4, :cond_15

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    move v7, v9

    :goto_9
    if-ge v9, v4, :cond_14

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v3, v12}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v14

    if-eqz v14, :cond_11

    if-eq v9, v7, :cond_10

    invoke-interface {v13, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_10
    add-int/2addr v7, v11

    goto :goto_a

    :cond_11
    if-nez v6, :cond_13

    move-object v6, v0

    check-cast v6, Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, v1

    check-cast v6, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object v8, v6, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    if-ne v8, v5, :cond_12

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v8

    iput-object v8, v6, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    :cond_12
    move-object v6, v8

    :cond_13
    int-to-long v14, v12

    move-object v8, v0

    check-cast v8, Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    shl-int/lit8 v8, p6, 0x3

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v6, v8, v12}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    :goto_a
    add-int/2addr v9, v11

    goto :goto_9

    :cond_14
    if-eq v7, v4, :cond_19

    invoke-interface {v13, v7, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_c

    :cond_15
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_16
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v3, v7}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v8

    if-nez v8, :cond_16

    if-nez v6, :cond_18

    move-object v6, v0

    check-cast v6, Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, v1

    check-cast v6, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object v8, v6, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    if-ne v8, v5, :cond_17

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v8

    iput-object v8, v6, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    :cond_17
    move-object v6, v8

    :cond_18
    int-to-long v7, v7

    move-object v9, v0

    check-cast v9, Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    shl-int/lit8 v9, p6, 0x3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    :cond_19
    :goto_c
    move v0, v2

    goto/16 :goto_24

    :pswitch_4
    if-ne v6, v15, :cond_3

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v1, :cond_20

    array-length v4, v3

    sub-int/2addr v4, v0

    if-gt v1, v4, :cond_1f

    if-nez v1, :cond_1a

    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1a
    invoke-static {v3, v0, v1}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_d
    add-int/2addr v0, v1

    :goto_e
    if-ge v0, v5, :cond_4d

    invoke-static {v3, v0, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq v2, v4, :cond_1b

    goto/16 :goto_24

    :cond_1b
    invoke-static {v3, v1, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v1, :cond_1e

    array-length v4, v3

    sub-int/2addr v4, v0

    if-gt v1, v4, :cond_1d

    if-nez v1, :cond_1c

    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1c
    invoke-static {v3, v0, v1}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1d
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_1e
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_1f
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_20
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :pswitch_5
    if-ne v6, v15, :cond_3

    invoke-virtual {v0, v8}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v0

    move-object/from16 p6, v0

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v13

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/google/protobuf/ArrayDecoders;->decodeMessageList(Lcom/google/protobuf/Schema;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto/16 :goto_24

    :pswitch_6
    if-ne v6, v15, :cond_3

    const-wide/32 v0, 0x20000000

    and-long v0, p9, v0

    cmp-long v0, v0, v16

    const-string v1, ""

    if-nez v0, :cond_26

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v4, :cond_25

    if-nez v4, :cond_21

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_21
    new-instance v6, Ljava/lang/String;

    sget-object v8, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v0, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_f
    add-int/2addr v0, v4

    :goto_10
    if-ge v0, v5, :cond_4d

    invoke-static {v3, v0, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    iget v6, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq v2, v6, :cond_22

    goto/16 :goto_24

    :cond_22
    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v4, :cond_24

    if-nez v4, :cond_23

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_23
    new-instance v6, Ljava/lang/String;

    sget-object v8, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v0, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_24
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_25
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_26
    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v4, :cond_2e

    if-nez v4, :cond_27

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_11
    move v6, v0

    goto :goto_12

    :cond_27
    add-int v6, v0, v4

    sget-object v8, Lcom/google/protobuf/Utf8;->processor:Lcom/google/protobuf/Utf8$SafeProcessor;

    invoke-virtual {v8, v3, v0, v6}, Lcom/google/protobuf/Utf8$SafeProcessor;->isValidUtf8([BII)Z

    move-result v8

    if-eqz v8, :cond_2d

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v0, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_12
    if-ge v6, v5, :cond_2c

    invoke-static {v3, v6, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq v2, v4, :cond_28

    goto :goto_13

    :cond_28
    invoke-static {v3, v0, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v4, :cond_2b

    if-nez v4, :cond_29

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_29
    add-int v6, v0, v4

    sget-object v8, Lcom/google/protobuf/Utf8;->processor:Lcom/google/protobuf/Utf8$SafeProcessor;

    invoke-virtual {v8, v3, v0, v6}, Lcom/google/protobuf/Utf8$SafeProcessor;->isValidUtf8([BII)Z

    move-result v8

    if-eqz v8, :cond_2a

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v0, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_2a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_2b
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_2c
    :goto_13
    move v0, v6

    goto/16 :goto_24

    :cond_2d
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_2e
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :pswitch_7
    if-ne v6, v15, :cond_32

    check-cast v13, Lcom/google/protobuf/BooleanArrayList;

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, v0

    :goto_14
    if-ge v0, v1, :cond_30

    invoke-static {v3, v0, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-wide v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    cmp-long v2, v4, v16

    if-eqz v2, :cond_2f

    move v2, v11

    goto :goto_15

    :cond_2f
    move v2, v9

    :goto_15
    invoke-virtual {v13, v2}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    goto :goto_14

    :cond_30
    if-ne v0, v1, :cond_31

    goto/16 :goto_24

    :cond_31
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_32
    if-nez v6, :cond_3

    check-cast v13, Lcom/google/protobuf/BooleanArrayList;

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-wide v14, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    cmp-long v1, v14, v16

    if-eqz v1, :cond_33

    move v1, v11

    goto :goto_16

    :cond_33
    move v1, v9

    :goto_16
    invoke-virtual {v13, v1}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    :goto_17
    if-ge v0, v5, :cond_4d

    invoke-static {v3, v0, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq v2, v4, :cond_34

    goto/16 :goto_24

    :cond_34
    invoke-static {v3, v1, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-wide v14, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    cmp-long v1, v14, v16

    if-eqz v1, :cond_35

    move v1, v11

    goto :goto_18

    :cond_35
    move v1, v9

    :goto_18
    invoke-virtual {v13, v1}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    goto :goto_17

    :pswitch_8
    if-ne v6, v15, :cond_38

    check-cast v13, Lcom/google/protobuf/IntArrayList;

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, v0

    :goto_19
    if-ge v0, v1, :cond_36

    invoke-static {v0, v3}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32(I[B)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_19

    :cond_36
    if-ne v0, v1, :cond_37

    goto/16 :goto_24

    :cond_37
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_38
    if-ne v6, v12, :cond_3

    check-cast v13, Lcom/google/protobuf/IntArrayList;

    invoke-static {v4, v3}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32(I[B)I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    add-int/lit8 v0, v4, 0x4

    :goto_1a
    if-ge v0, v5, :cond_4d

    invoke-static {v3, v0, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq v2, v4, :cond_39

    goto/16 :goto_24

    :cond_39
    invoke-static {v1, v3}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32(I[B)I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_1a

    :pswitch_9
    if-ne v6, v15, :cond_3c

    check-cast v13, Lcom/google/protobuf/LongArrayList;

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, v0

    :goto_1b
    if-ge v0, v1, :cond_3a

    invoke-static {v0, v3}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64(I[B)J

    move-result-wide v4

    invoke-virtual {v13, v4, v5}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_1b

    :cond_3a
    if-ne v0, v1, :cond_3b

    goto/16 :goto_24

    :cond_3b
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_3c
    if-ne v6, v11, :cond_3

    check-cast v13, Lcom/google/protobuf/LongArrayList;

    invoke-static {v4, v3}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64(I[B)J

    move-result-wide v0

    invoke-virtual {v13, v0, v1}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    add-int/lit8 v0, v4, 0x8

    :goto_1c
    if-ge v0, v5, :cond_4d

    invoke-static {v3, v0, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq v2, v4, :cond_3d

    goto/16 :goto_24

    :cond_3d
    invoke-static {v1, v3}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64(I[B)J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    add-int/lit8 v0, v1, 0x8

    goto :goto_1c

    :pswitch_a
    if-ne v6, v15, :cond_40

    check-cast v13, Lcom/google/protobuf/IntArrayList;

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, v0

    :goto_1d
    if-ge v0, v1, :cond_3e

    invoke-static {v3, v0, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v2, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v13, v2}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_1d

    :cond_3e
    if-ne v0, v1, :cond_3f

    goto/16 :goto_24

    :cond_3f
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_40
    if-nez v6, :cond_3

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v13

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto/16 :goto_24

    :pswitch_b
    if-ne v6, v15, :cond_43

    check-cast v13, Lcom/google/protobuf/LongArrayList;

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, v0

    :goto_1e
    if-ge v0, v1, :cond_41

    invoke-static {v3, v0, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-wide v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-virtual {v13, v4, v5}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_1e

    :cond_41
    if-ne v0, v1, :cond_42

    goto/16 :goto_24

    :cond_42
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_43
    if-nez v6, :cond_3

    check-cast v13, Lcom/google/protobuf/LongArrayList;

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-wide v8, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-virtual {v13, v8, v9}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    :goto_1f
    if-ge v0, v5, :cond_4d

    invoke-static {v3, v0, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq v2, v4, :cond_44

    goto/16 :goto_24

    :cond_44
    invoke-static {v3, v1, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-wide v8, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-virtual {v13, v8, v9}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_1f

    :pswitch_c
    if-ne v6, v15, :cond_47

    check-cast v13, Lcom/google/protobuf/FloatArrayList;

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, v0

    :goto_20
    if-ge v0, v1, :cond_45

    invoke-static {v0, v3}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32(I[B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-virtual {v13, v2}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_20

    :cond_45
    if-ne v0, v1, :cond_46

    goto/16 :goto_24

    :cond_46
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_47
    if-ne v6, v12, :cond_3

    check-cast v13, Lcom/google/protobuf/FloatArrayList;

    invoke-static {v4, v3}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {v13, v0}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    add-int/lit8 v0, v4, 0x4

    :goto_21
    if-ge v0, v5, :cond_4d

    invoke-static {v3, v0, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq v2, v4, :cond_48

    goto :goto_24

    :cond_48
    invoke-static {v1, v3}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {v13, v0}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_21

    :pswitch_d
    if-ne v6, v15, :cond_4b

    check-cast v13, Lcom/google/protobuf/DoubleArrayList;

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, v0

    :goto_22
    if-ge v0, v1, :cond_49

    invoke-static {v0, v3}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64(I[B)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    invoke-virtual {v13, v4, v5}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_22

    :cond_49
    if-ne v0, v1, :cond_4a

    goto :goto_24

    :cond_4a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_4b
    if-ne v6, v11, :cond_3

    check-cast v13, Lcom/google/protobuf/DoubleArrayList;

    invoke-static {v4, v3}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-virtual {v13, v0, v1}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    add-int/lit8 v0, v4, 0x8

    :goto_23
    if-ge v0, v5, :cond_4d

    invoke-static {v3, v0, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq v2, v4, :cond_4c

    goto :goto_24

    :cond_4c
    invoke-static {v1, v3}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64(I[B)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    add-int/lit8 v0, v1, 0x8

    goto :goto_23

    :cond_4d
    :goto_24
    return v0

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setFieldPresent(ILjava/lang/Object;)V
    .locals 4

    add-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    aget p0, p0, p1

    const p1, 0xfffff

    and-int/2addr p1, p0

    int-to-long v0, p1

    const-wide/32 v2, 0xfffff

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p0, p0, 0x14

    const/4 p1, 0x1

    shl-int p0, p1, p0

    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result p1

    or-int/2addr p0, p1

    invoke-static {p2, v0, v1, p0}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final slowPositionForFieldNumber(II)I
    .locals 4

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    aget v3, p0, v2

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move p2, v1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final storeMessageField(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p2, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    return-void
.end method

.method public final typeAndOffsetAt(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    aget p0, p0, p1

    return p0
.end method

.method public final writeMapHelper(Lcom/google/protobuf/CodedOutputStreamWriter;ILjava/lang/Object;I)V
    .locals 2

    if-eqz p3, :cond_0

    invoke-virtual {p0, p4}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object p4

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchemaLite;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p4, Lcom/google/protobuf/MapEntryLite;

    iget-object p4, p4, Lcom/google/protobuf/MapEntryLite;->metadata:Lcom/google/protobuf/MapEntryLite$Metadata;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, Lcom/google/protobuf/MapFieldLite;

    iget-object p0, p1, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Lcom/google/protobuf/MapFieldLite;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    const/4 v0, 0x2

    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p4, v0, v1}, Lcom/google/protobuf/MapEntryLite;->computeSerializedSize(Lcom/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p0, p4, v0, p3}, Lcom/google/protobuf/MapEntryLite;->writeTo(Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;Lcom/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeTo(Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStreamWriter;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, v0, Lcom/google/protobuf/MessageSchema;->proto3:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    invoke-virtual {v0, v6}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v7

    aget v8, v3, v6

    invoke-static {v7}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v9

    const/16 v10, 0x3f

    const/4 v11, 0x1

    iget-object v12, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    const v13, 0xfffff

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {v0, v8, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v9

    invoke-virtual {v2, v8, v7, v9}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v0, v8, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v13, v7

    invoke-static {v13, v14, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    move-result-wide v13

    shl-long v15, v13, v11

    shr-long v9, v13, v10

    xor-long/2addr v9, v15

    invoke-virtual {v12, v8, v9, v10}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt64(IJ)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {v0, v8, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    move-result v7

    shl-int/lit8 v9, v7, 0x1

    shr-int/lit8 v7, v7, 0x1f

    xor-int/2addr v7, v9

    invoke-virtual {v12, v8, v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    invoke-virtual {v12, v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {v0, v8, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v12, v8, v9, v10}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed64(IJ)V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {v0, v8, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    move-result v7

    invoke-virtual {v12, v8, v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed32(II)V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {v0, v8, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    move-result v7

    invoke-virtual {v12, v8, v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    invoke-virtual {v12, v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeInt32NoTag(I)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {v0, v8, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    move-result v7

    invoke-virtual {v12, v8, v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    invoke-virtual {v12, v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {v0, v8, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/ByteString;

    invoke-virtual {v2, v8, v7}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {v0, v8, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v9

    invoke-virtual {v2, v8, v7, v9}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {v0, v8, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v7, v2}, Lcom/google/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/CodedOutputStreamWriter;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {v0, v8, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v12, v8, v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    int-to-byte v7, v7

    invoke-virtual {v12, v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->write(B)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {v0, v8, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    move-result v7

    invoke-virtual {v12, v8, v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed32(II)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {v0, v8, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v12, v8, v9, v10}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed64(IJ)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {v0, v8, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    move-result v7

    invoke-virtual {v12, v8, v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    invoke-virtual {v12, v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeInt32NoTag(I)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {v0, v8, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v12, v8, v9, v10}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt64(IJ)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {v0, v8, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v12, v8, v9, v10}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt64(IJ)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {v0, v8, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    invoke-virtual {v12, v8, v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed32(II)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {v0, v8, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v9

    invoke-virtual {v12, v8, v9, v10}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed64(IJ)V

    goto/16 :goto_1

    :pswitch_12
    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v2, v8, v7, v6}, Lcom/google/protobuf/MessageSchema;->writeMapHelper(Lcom/google/protobuf/CodedOutputStreamWriter;ILjava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_13
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {v0, v6}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v9

    invoke-static {v8, v7, v2, v9}, Lcom/google/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_1

    :pswitch_14
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_1

    :pswitch_15
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_1

    :pswitch_16
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_1

    :pswitch_17
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_1

    :pswitch_18
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_1

    :pswitch_19
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_1

    :pswitch_1a
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_1

    :pswitch_1b
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_1

    :pswitch_1c
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_1

    :pswitch_1d
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_1

    :pswitch_1e
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_1

    :pswitch_1f
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_1

    :pswitch_20
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_1

    :pswitch_21
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_1

    :pswitch_22
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v5}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_1

    :pswitch_23
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v5}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_1

    :pswitch_24
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v5}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_1

    :pswitch_25
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v5}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_1

    :pswitch_26
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v5}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_1

    :pswitch_27
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v5}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_1

    :pswitch_28
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2}, Lcom/google/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;)V

    goto/16 :goto_1

    :pswitch_29
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {v0, v6}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v9

    invoke-static {v8, v7, v2, v9}, Lcom/google/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_1

    :pswitch_2a
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2}, Lcom/google/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;)V

    goto/16 :goto_1

    :pswitch_2b
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v5}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_1

    :pswitch_2c
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v5}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_1

    :pswitch_2d
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v5}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_1

    :pswitch_2e
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v5}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_1

    :pswitch_2f
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v5}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_1

    :pswitch_30
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v5}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_1

    :pswitch_31
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v5}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_1

    :pswitch_32
    aget v8, v3, v6

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v5}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_1

    :pswitch_33
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v9

    invoke-virtual {v2, v8, v7, v9}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_1

    :pswitch_34
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v13, v7

    invoke-static {v13, v14, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v13

    shl-long v15, v13, v11

    shr-long v9, v13, v10

    xor-long/2addr v9, v15

    invoke-virtual {v12, v8, v9, v10}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt64(IJ)V

    goto/16 :goto_1

    :pswitch_35
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v7

    shl-int/lit8 v9, v7, 0x1

    shr-int/lit8 v7, v7, 0x1f

    xor-int/2addr v7, v9

    invoke-virtual {v12, v8, v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    invoke-virtual {v12, v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    goto/16 :goto_1

    :pswitch_36
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v12, v8, v9, v10}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed64(IJ)V

    goto/16 :goto_1

    :pswitch_37
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v7

    invoke-virtual {v12, v8, v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed32(II)V

    goto/16 :goto_1

    :pswitch_38
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v7

    invoke-virtual {v12, v8, v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    invoke-virtual {v12, v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeInt32NoTag(I)V

    goto/16 :goto_1

    :pswitch_39
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v7

    invoke-virtual {v12, v8, v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    invoke-virtual {v12, v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    goto/16 :goto_1

    :pswitch_3a
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/ByteString;

    invoke-virtual {v2, v8, v7}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_1

    :pswitch_3b
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v9

    invoke-virtual {v2, v8, v7, v9}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_1

    :pswitch_3c
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v7, v2}, Lcom/google/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/CodedOutputStreamWriter;)V

    goto/16 :goto_1

    :pswitch_3d
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    sget-object v7, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    invoke-virtual {v7, v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->getBoolean(JLjava/lang/Object;)Z

    move-result v7

    invoke-virtual {v12, v8, v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    int-to-byte v7, v7

    invoke-virtual {v12, v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->write(B)V

    goto/16 :goto_1

    :pswitch_3e
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v7

    invoke-virtual {v12, v8, v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed32(II)V

    goto/16 :goto_1

    :pswitch_3f
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v12, v8, v9, v10}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed64(IJ)V

    goto :goto_1

    :pswitch_40
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v7

    invoke-virtual {v12, v8, v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    invoke-virtual {v12, v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeInt32NoTag(I)V

    goto :goto_1

    :pswitch_41
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v12, v8, v9, v10}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt64(IJ)V

    goto :goto_1

    :pswitch_42
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v12, v8, v9, v10}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt64(IJ)V

    goto :goto_1

    :pswitch_43
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    sget-object v7, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    invoke-virtual {v7, v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->getFloat(JLjava/lang/Object;)F

    move-result v7

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    invoke-virtual {v12, v8, v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed32(II)V

    goto :goto_1

    :pswitch_44
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    and-int/2addr v7, v13

    int-to-long v9, v7

    sget-object v7, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    invoke-virtual {v7, v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->getDouble(JLjava/lang/Object;)D

    move-result-wide v9

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v9

    invoke-virtual {v12, v8, v9, v10}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed64(IJ)V

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object v0, v0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    check-cast v0, Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v1

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, v2}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStreamWriter;)V

    goto/16 :goto_6

    :cond_2
    iget-object v3, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    array-length v4, v3

    sget-object v5, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    const v7, 0xfffff

    move v9, v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_2
    if-ge v8, v4, :cond_7

    invoke-virtual {v0, v8}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v11

    aget v12, v3, v8

    invoke-static {v11}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v13

    const/16 v14, 0x11

    const/4 v15, 0x1

    if-gt v13, v14, :cond_4

    add-int/lit8 v14, v8, 0x2

    aget v14, v3, v14

    and-int v6, v14, v7

    if-eq v6, v9, :cond_3

    int-to-long v9, v6

    invoke-virtual {v5, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v10

    move v9, v6

    :cond_3
    ushr-int/lit8 v6, v14, 0x14

    shl-int v6, v15, v6

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    and-int/2addr v11, v7

    move/from16 v17, v8

    int-to-long v7, v11

    const/16 v11, 0x3f

    packed-switch v13, :pswitch_data_1

    move/from16 v13, v17

    :cond_5
    :goto_4
    const/4 v11, 0x0

    goto/16 :goto_5

    :pswitch_45
    move/from16 v13, v17

    invoke-virtual {v0, v12, v13, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v13}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v7

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto :goto_4

    :pswitch_46
    move/from16 v13, v17

    invoke-virtual {v0, v12, v13, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v7, v8, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    move-result-wide v6

    shl-long v17, v6, v15

    shr-long/2addr v6, v11

    xor-long v6, v17, v6

    iget-object v8, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    invoke-virtual {v8, v12, v6, v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt64(IJ)V

    goto :goto_4

    :pswitch_47
    move/from16 v13, v17

    invoke-virtual {v0, v12, v13, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v7, v8, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    move-result v6

    shl-int/lit8 v7, v6, 0x1

    shr-int/lit8 v6, v6, 0x1f

    xor-int/2addr v6, v7

    iget-object v7, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    const/4 v8, 0x0

    invoke-virtual {v7, v12, v8}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    invoke-virtual {v7, v6}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    goto :goto_4

    :pswitch_48
    move/from16 v13, v17

    invoke-virtual {v0, v12, v13, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v7, v8, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    move-result-wide v6

    iget-object v8, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    invoke-virtual {v8, v12, v6, v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed64(IJ)V

    goto :goto_4

    :pswitch_49
    move/from16 v13, v17

    invoke-virtual {v0, v12, v13, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v7, v8, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    move-result v6

    iget-object v7, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    invoke-virtual {v7, v12, v6}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed32(II)V

    goto :goto_4

    :pswitch_4a
    move/from16 v13, v17

    invoke-virtual {v0, v12, v13, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v7, v8, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    move-result v6

    iget-object v7, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    const/4 v11, 0x0

    invoke-virtual {v7, v12, v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    invoke-virtual {v7, v6}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeInt32NoTag(I)V

    goto/16 :goto_5

    :pswitch_4b
    move/from16 v13, v17

    const/4 v11, 0x0

    invoke-virtual {v0, v12, v13, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v7, v8, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    move-result v6

    iget-object v7, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    invoke-virtual {v7, v12, v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    invoke-virtual {v7, v6}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    goto/16 :goto_4

    :pswitch_4c
    move/from16 v13, v17

    invoke-virtual {v0, v12, v13, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/ByteString;

    invoke-virtual {v2, v12, v6}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_4

    :pswitch_4d
    move/from16 v13, v17

    invoke-virtual {v0, v12, v13, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v13}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v7

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_4

    :pswitch_4e
    move/from16 v13, v17

    invoke-virtual {v0, v12, v13, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v12, v6, v2}, Lcom/google/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/CodedOutputStreamWriter;)V

    goto/16 :goto_4

    :pswitch_4f
    move/from16 v13, v17

    invoke-virtual {v0, v12, v13, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v7, v8, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v7, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    const/4 v8, 0x0

    invoke-virtual {v7, v12, v8}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    int-to-byte v6, v6

    invoke-virtual {v7, v6}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->write(B)V

    goto/16 :goto_4

    :pswitch_50
    move/from16 v13, v17

    invoke-virtual {v0, v12, v13, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v7, v8, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    move-result v6

    iget-object v7, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    invoke-virtual {v7, v12, v6}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed32(II)V

    goto/16 :goto_4

    :pswitch_51
    move/from16 v13, v17

    invoke-virtual {v0, v12, v13, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v7, v8, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    move-result-wide v6

    iget-object v8, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    invoke-virtual {v8, v12, v6, v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed64(IJ)V

    goto/16 :goto_4

    :pswitch_52
    move/from16 v13, v17

    invoke-virtual {v0, v12, v13, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v7, v8, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    move-result v6

    iget-object v7, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    const/4 v8, 0x0

    invoke-virtual {v7, v12, v8}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    invoke-virtual {v7, v6}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeInt32NoTag(I)V

    goto/16 :goto_4

    :pswitch_53
    move/from16 v13, v17

    invoke-virtual {v0, v12, v13, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v7, v8, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    move-result-wide v6

    iget-object v8, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    invoke-virtual {v8, v12, v6, v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt64(IJ)V

    goto/16 :goto_4

    :pswitch_54
    move/from16 v13, v17

    invoke-virtual {v0, v12, v13, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v7, v8, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    move-result-wide v6

    iget-object v8, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    invoke-virtual {v8, v12, v6, v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt64(IJ)V

    goto/16 :goto_4

    :pswitch_55
    move/from16 v13, v17

    invoke-virtual {v0, v12, v13, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v7, v8, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v7, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    invoke-virtual {v7, v12, v6}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed32(II)V

    goto/16 :goto_4

    :pswitch_56
    move/from16 v13, v17

    invoke-virtual {v0, v12, v13, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v7, v8, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v8, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    invoke-virtual {v8, v12, v6, v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed64(IJ)V

    goto/16 :goto_4

    :pswitch_57
    move/from16 v13, v17

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v2, v12, v6, v13}, Lcom/google/protobuf/MessageSchema;->writeMapHelper(Lcom/google/protobuf/CodedOutputStreamWriter;ILjava/lang/Object;I)V

    goto/16 :goto_4

    :pswitch_58
    move/from16 v13, v17

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {v0, v13}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v8

    invoke-static {v6, v7, v2, v8}, Lcom/google/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_4

    :pswitch_59
    move/from16 v13, v17

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v15}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_5a
    move/from16 v13, v17

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v15}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_5b
    move/from16 v13, v17

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v15}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_5c
    move/from16 v13, v17

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v15}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_5d
    move/from16 v13, v17

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v15}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_5e
    move/from16 v13, v17

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v15}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_5f
    move/from16 v13, v17

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v15}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_60
    move/from16 v13, v17

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v15}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_61
    move/from16 v13, v17

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v15}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_62
    move/from16 v13, v17

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v15}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_63
    move/from16 v13, v17

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v15}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_64
    move/from16 v13, v17

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v15}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_65
    move/from16 v13, v17

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v15}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_66
    move/from16 v13, v17

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v15}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_67
    move/from16 v13, v17

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v11, 0x0

    invoke-static {v6, v7, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_5

    :pswitch_68
    move/from16 v13, v17

    const/4 v11, 0x0

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_5

    :pswitch_69
    move/from16 v13, v17

    const/4 v11, 0x0

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_5

    :pswitch_6a
    move/from16 v13, v17

    const/4 v11, 0x0

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_5

    :pswitch_6b
    move/from16 v13, v17

    const/4 v11, 0x0

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_5

    :pswitch_6c
    move/from16 v13, v17

    const/4 v11, 0x0

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_5

    :pswitch_6d
    move/from16 v13, v17

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2}, Lcom/google/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;)V

    goto/16 :goto_4

    :pswitch_6e
    move/from16 v13, v17

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {v0, v13}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v8

    invoke-static {v6, v7, v2, v8}, Lcom/google/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_4

    :pswitch_6f
    move/from16 v13, v17

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2}, Lcom/google/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;)V

    goto/16 :goto_4

    :pswitch_70
    move/from16 v13, v17

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v11, 0x0

    invoke-static {v6, v7, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_5

    :pswitch_71
    move/from16 v13, v17

    const/4 v11, 0x0

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_5

    :pswitch_72
    move/from16 v13, v17

    const/4 v11, 0x0

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_5

    :pswitch_73
    move/from16 v13, v17

    const/4 v11, 0x0

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_5

    :pswitch_74
    move/from16 v13, v17

    const/4 v11, 0x0

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_5

    :pswitch_75
    move/from16 v13, v17

    const/4 v11, 0x0

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_5

    :pswitch_76
    move/from16 v13, v17

    const/4 v11, 0x0

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_5

    :pswitch_77
    move/from16 v13, v17

    const/4 v11, 0x0

    aget v6, v3, v13

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_5

    :pswitch_78
    move/from16 v13, v17

    and-int/2addr v6, v10

    if-eqz v6, :cond_5

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v13}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v7

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_4

    :pswitch_79
    move/from16 v13, v17

    and-int/2addr v6, v10

    if-eqz v6, :cond_5

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    shl-long v17, v6, v15

    shr-long/2addr v6, v11

    xor-long v6, v17, v6

    iget-object v8, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    invoke-virtual {v8, v12, v6, v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt64(IJ)V

    goto/16 :goto_4

    :pswitch_7a
    move/from16 v13, v17

    and-int/2addr v6, v10

    if-eqz v6, :cond_5

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    shl-int/lit8 v7, v6, 0x1

    shr-int/lit8 v6, v6, 0x1f

    xor-int/2addr v6, v7

    iget-object v7, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    const/4 v8, 0x0

    invoke-virtual {v7, v12, v8}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    invoke-virtual {v7, v6}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    goto/16 :goto_4

    :pswitch_7b
    move/from16 v13, v17

    and-int/2addr v6, v10

    if-eqz v6, :cond_5

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    iget-object v8, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    invoke-virtual {v8, v12, v6, v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed64(IJ)V

    goto/16 :goto_4

    :pswitch_7c
    move/from16 v13, v17

    and-int/2addr v6, v10

    if-eqz v6, :cond_5

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    iget-object v7, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    invoke-virtual {v7, v12, v6}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed32(II)V

    goto/16 :goto_4

    :pswitch_7d
    move/from16 v13, v17

    and-int/2addr v6, v10

    if-eqz v6, :cond_5

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    iget-object v7, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    const/4 v11, 0x0

    invoke-virtual {v7, v12, v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    invoke-virtual {v7, v6}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeInt32NoTag(I)V

    goto/16 :goto_5

    :pswitch_7e
    move/from16 v13, v17

    const/4 v11, 0x0

    and-int/2addr v6, v10

    if-eqz v6, :cond_6

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    iget-object v7, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    invoke-virtual {v7, v12, v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    invoke-virtual {v7, v6}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    goto/16 :goto_4

    :pswitch_7f
    move/from16 v13, v17

    and-int/2addr v6, v10

    if-eqz v6, :cond_5

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/ByteString;

    invoke-virtual {v2, v12, v6}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_4

    :pswitch_80
    move/from16 v13, v17

    and-int/2addr v6, v10

    if-eqz v6, :cond_5

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v13}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v7

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_4

    :pswitch_81
    move/from16 v13, v17

    and-int/2addr v6, v10

    if-eqz v6, :cond_5

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v12, v6, v2}, Lcom/google/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/CodedOutputStreamWriter;)V

    goto/16 :goto_4

    :pswitch_82
    move/from16 v13, v17

    and-int/2addr v6, v10

    if-eqz v6, :cond_5

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    invoke-virtual {v6, v7, v8, v1}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->getBoolean(JLjava/lang/Object;)Z

    move-result v6

    iget-object v7, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    const/4 v8, 0x0

    invoke-virtual {v7, v12, v8}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    int-to-byte v6, v6

    invoke-virtual {v7, v6}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->write(B)V

    goto/16 :goto_4

    :pswitch_83
    move/from16 v13, v17

    and-int/2addr v6, v10

    if-eqz v6, :cond_5

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    iget-object v7, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    invoke-virtual {v7, v12, v6}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed32(II)V

    goto/16 :goto_4

    :pswitch_84
    move/from16 v13, v17

    and-int/2addr v6, v10

    if-eqz v6, :cond_5

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    iget-object v8, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    invoke-virtual {v8, v12, v6, v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed64(IJ)V

    goto/16 :goto_4

    :pswitch_85
    move/from16 v13, v17

    and-int/2addr v6, v10

    if-eqz v6, :cond_5

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    iget-object v7, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    const/4 v11, 0x0

    invoke-virtual {v7, v12, v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    invoke-virtual {v7, v6}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeInt32NoTag(I)V

    goto :goto_5

    :pswitch_86
    move/from16 v13, v17

    const/4 v11, 0x0

    and-int/2addr v6, v10

    if-eqz v6, :cond_6

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    iget-object v8, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    invoke-virtual {v8, v12, v6, v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt64(IJ)V

    goto :goto_5

    :pswitch_87
    move/from16 v13, v17

    const/4 v11, 0x0

    and-int/2addr v6, v10

    if-eqz v6, :cond_6

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    iget-object v8, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    invoke-virtual {v8, v12, v6, v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt64(IJ)V

    goto :goto_5

    :pswitch_88
    move/from16 v13, v17

    const/4 v11, 0x0

    and-int/2addr v6, v10

    if-eqz v6, :cond_6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    invoke-virtual {v6, v7, v8, v1}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->getFloat(JLjava/lang/Object;)F

    move-result v6

    iget-object v7, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    invoke-virtual {v7, v12, v6}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed32(II)V

    goto :goto_5

    :pswitch_89
    move/from16 v13, v17

    const/4 v11, 0x0

    and-int/2addr v6, v10

    if-eqz v6, :cond_6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    invoke-virtual {v6, v7, v8, v1}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->getDouble(JLjava/lang/Object;)D

    move-result-wide v6

    iget-object v8, v2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    invoke-virtual {v8, v12, v6, v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed64(IJ)V

    :cond_6
    :goto_5
    add-int/lit8 v8, v13, 0x3

    const v7, 0xfffff

    goto/16 :goto_2

    :cond_7
    iget-object v0, v0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    check-cast v0, Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v1

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, v2}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStreamWriter;)V

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
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
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method
