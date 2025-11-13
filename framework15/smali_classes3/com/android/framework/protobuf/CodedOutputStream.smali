.class public abstract Lcom/android/framework/protobuf/CodedOutputStream;
.super Lcom/android/framework/protobuf/ByteOutput;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;,
        Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;,
        Lcom/android/framework/protobuf/CodedOutputStream$HeapNioEncoder;,
        Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;,
        Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;,
        Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;,
        Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;,
        Lcom/android/framework/protobuf/CodedOutputStream$AbstractBufferedEncoder;
    }
.end annotation


# static fields
.field public static final blacklist DEFAULT_BUFFER_SIZE:I = 0x1000

.field private static final blacklist HAS_UNSAFE_ARRAY_OPERATIONS:Z

.field public static final blacklist LITTLE_ENDIAN_32_SIZE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist logger:Ljava/util/logging/Logger;


# instance fields
.field private blacklist serializationDeterministic:Z

.field blacklist wrapper:Lcom/android/framework/protobuf/CodedOutputStreamWriter;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/CodedOutputStream;->logger:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->hasUnsafeArrayOperations()Z

    move-result v0

    sput-boolean v0, Lcom/android/framework/protobuf/CodedOutputStream;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/ByteOutput;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/framework/protobuf/CodedOutputStream$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedOutputStream;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/framework/protobuf/CodedOutputStream;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    return v0
.end method

.method public static blacklist computeBoolSize(IZ)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBoolSizeNoTag(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeBoolSizeNoTag(Z)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist computeByteArraySize(I[B)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeByteArraySizeNoTag([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeByteArraySizeNoTag([B)I
    .locals 1

    array-length v0, p0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v0

    return v0
.end method

.method public static blacklist computeByteBufferSize(ILjava/nio/ByteBuffer;)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeByteBufferSizeNoTag(Ljava/nio/ByteBuffer;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeByteBufferSizeNoTag(Ljava/nio/ByteBuffer;)I
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v0

    return v0
.end method

.method public static blacklist computeBytesSize(ILcom/android/framework/protobuf/ByteString;)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/android/framework/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeBytesSizeNoTag(Lcom/android/framework/protobuf/ByteString;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v0

    return v0
.end method

.method public static blacklist computeDoubleSize(ID)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeDoubleSizeNoTag(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeDoubleSizeNoTag(D)I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static blacklist computeEnumSize(II)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeEnumSizeNoTag(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v0

    return v0
.end method

.method public static blacklist computeFixed32Size(II)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeFixed32SizeNoTag(I)I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static blacklist computeFixed64Size(IJ)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeFixed64SizeNoTag(J)I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static blacklist computeFloatSize(IF)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFloatSizeNoTag(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeFloatSizeNoTag(F)I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static blacklist computeGroupSize(ILcom/android/framework/protobuf/MessageLite;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-interface {p1}, Lcom/android/framework/protobuf/MessageLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static blacklist computeGroupSize(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeGroupSizeNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeGroupSizeNoTag(Lcom/android/framework/protobuf/MessageLite;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0}, Lcom/android/framework/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method static blacklist computeGroupSizeNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    check-cast v0, Lcom/android/framework/protobuf/AbstractMessageLite;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/android/framework/protobuf/Schema;)I

    move-result v0

    return v0
.end method

.method public static blacklist computeInt32Size(II)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeInt32SizeNoTag(I)I
    .locals 1

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xa

    return v0
.end method

.method public static blacklist computeInt64Size(IJ)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeInt64SizeNoTag(J)I
    .locals 1

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v0

    return v0
.end method

.method public static blacklist computeLazyFieldMessageSetExtensionSize(ILcom/android/framework/protobuf/LazyFieldLite;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    invoke-static {v1, p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLazyFieldSize(ILcom/android/framework/protobuf/LazyFieldLite;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeLazyFieldSize(ILcom/android/framework/protobuf/LazyFieldLite;)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLazyFieldSizeNoTag(Lcom/android/framework/protobuf/LazyFieldLite;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeLazyFieldSizeNoTag(Lcom/android/framework/protobuf/LazyFieldLite;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyFieldLite;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v0

    return v0
.end method

.method static blacklist computeLengthDelimitedFieldSize(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static blacklist computeMessageSetExtensionSize(ILcom/android/framework/protobuf/MessageLite;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    invoke-static {v1, p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/framework/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeMessageSize(ILcom/android/framework/protobuf/MessageLite;)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/android/framework/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static blacklist computeMessageSize(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeMessageSizeNoTag(Lcom/android/framework/protobuf/MessageLite;)I
    .locals 1

    invoke-interface {p0}, Lcom/android/framework/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v0

    return v0
.end method

.method static blacklist computeMessageSizeNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/framework/protobuf/AbstractMessageLite;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/android/framework/protobuf/Schema;)I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v0

    return v0
.end method

.method static blacklist computePreferredBufferSize(I)I
    .locals 1

    const/16 v0, 0x1000

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static blacklist computeRawMessageSetExtensionSize(ILcom/android/framework/protobuf/ByteString;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    invoke-static {v1, p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/framework/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeRawVarint32Size(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v0

    return v0
.end method

.method public static blacklist computeRawVarint64Size(J)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v0

    return v0
.end method

.method public static blacklist computeSFixed32Size(II)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeSFixed32SizeNoTag(I)I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static blacklist computeSFixed64Size(IJ)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeSFixed64SizeNoTag(J)I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static blacklist computeSInt32Size(II)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeSInt32SizeNoTag(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v0

    return v0
.end method

.method public static blacklist computeSInt64Size(IJ)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeSInt64SizeNoTag(J)I
    .locals 2

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v0

    return v0
.end method

.method public static blacklist computeStringSize(ILjava/lang/String;)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeStringSizeNoTag(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/android/framework/protobuf/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v0
    :try_end_0
    .catch Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v2, v1

    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v1

    return v1
.end method

.method public static blacklist computeTagSize(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v0

    return v0
.end method

.method public static blacklist computeUInt32Size(II)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeUInt32SizeNoTag(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    return v0

    :cond_3
    const/4 v0, 0x5

    return v0
.end method

.method public static blacklist computeUInt64Size(IJ)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeUInt64SizeNoTag(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 v0, 0xa

    return v0

    :cond_1
    const/4 v0, 0x2

    const-wide v4, -0x800000000L

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x4

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    :cond_2
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method public static blacklist encodeZigZag32(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method public static blacklist encodeZigZag64(J)J
    .locals 4

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method static blacklist newInstance(Lcom/android/framework/protobuf/ByteOutput;I)Lcom/android/framework/protobuf/CodedOutputStream;
    .locals 2

    if-ltz p1, :cond_0

    new-instance v0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;

    invoke-direct {v0, p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;-><init>(Lcom/android/framework/protobuf/ByteOutput;I)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bufferSize must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist newInstance(Ljava/io/OutputStream;)Lcom/android/framework/protobuf/CodedOutputStream;
    .locals 1

    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/android/framework/protobuf/CodedOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist newInstance(Ljava/io/OutputStream;I)Lcom/android/framework/protobuf/CodedOutputStream;
    .locals 1

    new-instance v0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;

    invoke-direct {v0, p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method public static blacklist newInstance(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/CodedOutputStream;
    .locals 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/framework/protobuf/CodedOutputStream$HeapNioEncoder;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/CodedOutputStream$HeapNioEncoder;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->newUnsafeInstance(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/CodedOutputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->newSafeInstance(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/CodedOutputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ByteBuffer is read-only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist newInstance(Ljava/nio/ByteBuffer;I)Lcom/android/framework/protobuf/CodedOutputStream;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->newInstance(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/CodedOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist newInstance([B)Lcom/android/framework/protobuf/CodedOutputStream;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->newInstance([BII)Lcom/android/framework/protobuf/CodedOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist newInstance([BII)Lcom/android/framework/protobuf/CodedOutputStream;
    .locals 1

    new-instance v0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;-><init>([BII)V

    return-object v0
.end method

.method static blacklist newSafeInstance(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/CodedOutputStream;
    .locals 1

    new-instance v0, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method static blacklist newUnsafeInstance(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/CodedOutputStream;
    .locals 1

    new-instance v0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method


# virtual methods
.method public final blacklist checkNoSpaceLeft()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->spaceLeft()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract blacklist flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist getTotalBytesWritten()I
.end method

.method final blacklist inefficientWriteStringNoTag(Ljava/lang/String;Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/framework/protobuf/CodedOutputStream;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :try_start_0
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeLazy([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v2, v1}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method blacklist isSerializationDeterministic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/framework/protobuf/CodedOutputStream;->serializationDeterministic:Z

    return v0
.end method

.method public abstract blacklist spaceLeft()I
.end method

.method public blacklist useDeterministicSerialization()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/framework/protobuf/CodedOutputStream;->serializationDeterministic:Z

    return-void
.end method

.method public abstract blacklist write(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist write(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist write([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeBool(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final blacklist writeBoolNoTag(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->write(B)V

    return-void
.end method

.method public abstract blacklist writeByteArray(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeByteArray(I[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final blacklist writeByteArrayNoTag([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeByteArrayNoTag([BII)V

    return-void
.end method

.method abstract blacklist writeByteArrayNoTag([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeByteBuffer(ILjava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeBytes(ILcom/android/framework/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeBytesNoTag(Lcom/android/framework/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final blacklist writeDouble(ID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    return-void
.end method

.method public final blacklist writeDoubleNoTag(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    return-void
.end method

.method public final blacklist writeEnum(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeInt32(II)V

    return-void
.end method

.method public final blacklist writeEnumNoTag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    return-void
.end method

.method public abstract blacklist writeFixed32(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeFixed32NoTag(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeFixed64(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeFixed64NoTag(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final blacklist writeFloat(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32(II)V

    return-void
.end method

.method public final blacklist writeFloatNoTag(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    return-void
.end method

.method public final blacklist writeGroup(ILcom/android/framework/protobuf/MessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/android/framework/protobuf/MessageLite;)V

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    return-void
.end method

.method final blacklist writeGroup(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    return-void
.end method

.method public final blacklist writeGroupNoTag(Lcom/android/framework/protobuf/MessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p1, p0}, Lcom/android/framework/protobuf/MessageLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V

    return-void
.end method

.method final blacklist writeGroupNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream;->wrapper:Lcom/android/framework/protobuf/CodedOutputStreamWriter;

    invoke-interface {p2, p1, v0}, Lcom/android/framework/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    return-void
.end method

.method public abstract blacklist writeInt32(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeInt32NoTag(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final blacklist writeInt64(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    return-void
.end method

.method public final blacklist writeInt64NoTag(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    return-void
.end method

.method public abstract blacklist writeLazy(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeLazy([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeMessage(ILcom/android/framework/protobuf/MessageLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist writeMessage(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeMessageSetExtension(ILcom/android/framework/protobuf/MessageLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final blacklist writeRawByte(B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->write(B)V

    return-void
.end method

.method public final blacklist writeRawByte(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->write(B)V

    return-void
.end method

.method public final blacklist writeRawBytes(Lcom/android/framework/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/android/framework/protobuf/ByteString;->writeTo(Lcom/android/framework/protobuf/ByteOutput;)V

    return-void
.end method

.method public abstract blacklist writeRawBytes(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final blacklist writeRawBytes([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->write([BII)V

    return-void
.end method

.method public final blacklist writeRawBytes([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->write([BII)V

    return-void
.end method

.method public final blacklist writeRawLittleEndian32(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    return-void
.end method

.method public final blacklist writeRawLittleEndian64(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    return-void
.end method

.method public abstract blacklist writeRawMessageSetExtension(ILcom/android/framework/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final blacklist writeRawVarint32(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    return-void
.end method

.method public final blacklist writeRawVarint64(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    return-void
.end method

.method public final blacklist writeSFixed32(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32(II)V

    return-void
.end method

.method public final blacklist writeSFixed32NoTag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    return-void
.end method

.method public final blacklist writeSFixed64(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    return-void
.end method

.method public final blacklist writeSFixed64NoTag(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    return-void
.end method

.method public final blacklist writeSInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/framework/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32(II)V

    return-void
.end method

.method public final blacklist writeSInt32NoTag(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    return-void
.end method

.method public final blacklist writeSInt64(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    return-void
.end method

.method public final blacklist writeSInt64NoTag(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    return-void
.end method

.method public abstract blacklist writeString(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeStringNoTag(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeTag(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeUInt32(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeUInt32NoTag(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeUInt64(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeUInt64NoTag(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
