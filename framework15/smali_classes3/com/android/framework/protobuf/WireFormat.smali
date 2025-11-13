.class public final Lcom/android/framework/protobuf/WireFormat;
.super Ljava/lang/Object;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/WireFormat$FieldType;,
        Lcom/android/framework/protobuf/WireFormat$Utf8Validation;,
        Lcom/android/framework/protobuf/WireFormat$JavaType;
    }
.end annotation


# static fields
.field static final blacklist FIXED32_SIZE:I = 0x4

.field static final blacklist FIXED64_SIZE:I = 0x8

.field static final blacklist MAX_VARINT32_SIZE:I = 0x5

.field static final blacklist MAX_VARINT64_SIZE:I = 0xa

.field static final blacklist MAX_VARINT_SIZE:I = 0xa

.field static final blacklist MESSAGE_SET_ITEM:I = 0x1

.field static final blacklist MESSAGE_SET_ITEM_END_TAG:I

.field static final blacklist MESSAGE_SET_ITEM_TAG:I

.field static final blacklist MESSAGE_SET_MESSAGE:I = 0x3

.field static final blacklist MESSAGE_SET_MESSAGE_TAG:I

.field static final blacklist MESSAGE_SET_TYPE_ID:I = 0x2

.field static final blacklist MESSAGE_SET_TYPE_ID_TAG:I

.field static final blacklist TAG_TYPE_BITS:I = 0x3

.field static final blacklist TAG_TYPE_MASK:I = 0x7

.field public static final blacklist WIRETYPE_END_GROUP:I = 0x4

.field public static final blacklist WIRETYPE_FIXED32:I = 0x5

.field public static final blacklist WIRETYPE_FIXED64:I = 0x1

.field public static final blacklist WIRETYPE_LENGTH_DELIMITED:I = 0x2

.field public static final blacklist WIRETYPE_START_GROUP:I = 0x3

.field public static final blacklist WIRETYPE_VARINT:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v2

    sput v2, Lcom/android/framework/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    sput v0, Lcom/android/framework/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-static {v2, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    sput v0, Lcom/android/framework/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    nop

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    sput v0, Lcom/android/framework/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getTagFieldNumber(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method public static blacklist getTagWireType(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static blacklist makeTag(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method static blacklist readPrimitiveField(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;Lcom/android/framework/protobuf/WireFormat$Utf8Validation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "readPrimitiveField() cannot handle enums."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :pswitch_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "readPrimitiveField() cannot handle embedded messages."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "readPrimitiveField() cannot handle nested groups."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_9
    invoke-virtual {p2, p0}, Lcom/android/framework/protobuf/WireFormat$Utf8Validation;->readString(Lcom/android/framework/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_b
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_c
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_e
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_f
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_10
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_11
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

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
