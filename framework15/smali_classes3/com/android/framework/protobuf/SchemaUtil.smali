.class final Lcom/android/framework/protobuf/SchemaUtil;
.super Ljava/lang/Object;
.source "SchemaUtil.java"


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation


# static fields
.field private static final blacklist DEFAULT_LOOK_UP_START_NUMBER:I = 0x28

.field private static final blacklist GENERATED_MESSAGE_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final blacklist PROTO2_UNKNOWN_FIELD_SET_SCHEMA:Lcom/android/framework/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field

.field private static final blacklist PROTO3_UNKNOWN_FIELD_SET_SCHEMA:Lcom/android/framework/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field

.field private static final blacklist UNKNOWN_FIELD_SET_LITE_SCHEMA:Lcom/android/framework/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/framework/protobuf/SchemaUtil;->getGeneratedMessageClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    nop

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/framework/protobuf/SchemaUtil;->getUnknownFieldSetSchema(Z)Lcom/android/framework/protobuf/UnknownFieldSchema;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/SchemaUtil;->PROTO2_UNKNOWN_FIELD_SET_SCHEMA:Lcom/android/framework/protobuf/UnknownFieldSchema;

    nop

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/framework/protobuf/SchemaUtil;->getUnknownFieldSetSchema(Z)Lcom/android/framework/protobuf/UnknownFieldSchema;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/SchemaUtil;->PROTO3_UNKNOWN_FIELD_SET_SCHEMA:Lcom/android/framework/protobuf/UnknownFieldSchema;

    new-instance v0, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;

    invoke-direct {v0}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_LITE_SCHEMA:Lcom/android/framework/protobuf/UnknownFieldSchema;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist computeSizeBoolList(ILjava/util/List;Z)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1

    :cond_1
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    mul-int/2addr v1, v0

    return v1
.end method

.method static blacklist computeSizeBoolListNoTag(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method static blacklist computeSizeByteStringList(ILjava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    mul-int/2addr v1, v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/android/framework/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static blacklist computeSizeEnumList(ILjava/util/List;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result v1

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    return v2

    :cond_1
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method static blacklist computeSizeEnumListNoTag(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x0

    instance-of v2, p0, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v2, :cond_2

    move-object v2, p0

    check-cast v2, Lcom/android/framework/protobuf/IntArrayList;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/IntArrayList;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return v1
.end method

.method static blacklist computeSizeFixed32List(ILjava/util/List;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    mul-int/lit8 v1, v0, 0x4

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    return v2

    :cond_1
    invoke-static {p0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v1

    mul-int/2addr v1, v0

    return v1
.end method

.method static blacklist computeSizeFixed32ListNoTag(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method static blacklist computeSizeFixed64List(ILjava/util/List;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    mul-int/lit8 v1, v0, 0x8

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    return v2

    :cond_1
    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v1

    mul-int/2addr v1, v0

    return v1
.end method

.method static blacklist computeSizeFixed64ListNoTag(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method static blacklist computeSizeGroupList(ILjava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/MessageLite;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/MessageLite;

    invoke-static {p0, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeGroupSize(ILcom/android/framework/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static blacklist computeSizeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/MessageLite;",
            ">;",
            "Lcom/android/framework/protobuf/Schema;",
            ")I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/MessageLite;

    invoke-static {p0, v3, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeGroupSize(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static blacklist computeSizeInt32List(ILjava/util/List;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result v1

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    return v2

    :cond_1
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method static blacklist computeSizeInt32ListNoTag(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x0

    instance-of v2, p0, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v2, :cond_2

    move-object v2, p0

    check-cast v2, Lcom/android/framework/protobuf/IntArrayList;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/IntArrayList;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return v1
.end method

.method static blacklist computeSizeInt64List(ILjava/util/List;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v1

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    return v2

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v2, v1

    return v2
.end method

.method static blacklist computeSizeInt64ListNoTag(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x0

    instance-of v2, p0, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v2, :cond_2

    move-object v2, p0

    check-cast v2, Lcom/android/framework/protobuf/LongArrayList;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return v1
.end method

.method static blacklist computeSizeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)I
    .locals 1

    instance-of v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LazyFieldLite;

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLazyFieldSize(ILcom/android/framework/protobuf/LazyFieldLite;)I

    move-result v0

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;

    invoke-static {p0, v0, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I

    move-result v0

    return v0
.end method

.method static blacklist computeSizeMessageList(ILjava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    mul-int/2addr v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/android/framework/protobuf/LazyFieldLite;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/android/framework/protobuf/LazyFieldLite;

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLazyFieldSizeNoTag(Lcom/android/framework/protobuf/LazyFieldLite;)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    check-cast v4, Lcom/android/framework/protobuf/MessageLite;

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/android/framework/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v1, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method static blacklist computeSizeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/android/framework/protobuf/Schema;",
            ")I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    mul-int/2addr v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/android/framework/protobuf/LazyFieldLite;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/android/framework/protobuf/LazyFieldLite;

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLazyFieldSizeNoTag(Lcom/android/framework/protobuf/LazyFieldLite;)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    check-cast v4, Lcom/android/framework/protobuf/MessageLite;

    invoke-static {v4, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I

    move-result v4

    add-int/2addr v1, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method static blacklist computeSizeSInt32List(ILjava/util/List;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result v1

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    return v2

    :cond_1
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method static blacklist computeSizeSInt32ListNoTag(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x0

    instance-of v2, p0, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v2, :cond_2

    move-object v2, p0

    check-cast v2, Lcom/android/framework/protobuf/IntArrayList;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/IntArrayList;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return v1
.end method

.method static blacklist computeSizeSInt64List(ILjava/util/List;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result v1

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    return v2

    :cond_1
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method static blacklist computeSizeSInt64ListNoTag(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x0

    instance-of v2, p0, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v2, :cond_2

    move-object v2, p0

    check-cast v2, Lcom/android/framework/protobuf/LongArrayList;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return v1
.end method

.method static blacklist computeSizeStringList(ILjava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    mul-int/2addr v1, v0

    instance-of v2, p1, Lcom/android/framework/protobuf/LazyStringList;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/android/framework/protobuf/LazyStringList;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-interface {v2, v3}, Lcom/android/framework/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/android/framework/protobuf/ByteString;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/android/framework/protobuf/ByteString;)I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_1

    :cond_1
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    goto :goto_4

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/android/framework/protobuf/ByteString;

    if-eqz v4, :cond_4

    move-object v4, v3

    check-cast v4, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/android/framework/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_3

    :cond_4
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_4
    return v1
.end method

.method static blacklist computeSizeUInt32List(ILjava/util/List;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result v1

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    return v2

    :cond_1
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method static blacklist computeSizeUInt32ListNoTag(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x0

    instance-of v2, p0, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v2, :cond_2

    move-object v2, p0

    check-cast v2, Lcom/android/framework/protobuf/IntArrayList;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/IntArrayList;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return v1
.end method

.method static blacklist computeSizeUInt64List(ILjava/util/List;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result v1

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    return v2

    :cond_1
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method static blacklist computeSizeUInt64ListNoTag(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x0

    instance-of v2, p0, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v2, :cond_2

    move-object v2, p0

    check-cast v2, Lcom/android/framework/protobuf/LongArrayList;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return v1
.end method

.method static blacklist filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Lcom/android/framework/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/framework/protobuf/Internal$EnumLiteMap<",
            "*>;TUB;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    if-nez p3, :cond_0

    return-object p4

    :cond_0
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p3, v3}, Lcom/android/framework/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/android/framework/protobuf/Internal$EnumLite;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eq v2, v0, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    nop

    invoke-static {p0, p1, v3, p4, p5}, Lcom/android/framework/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eq v0, v1, :cond_4

    invoke-interface {p2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_4
    goto :goto_3

    :cond_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p3, v1}, Lcom/android/framework/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/android/framework/protobuf/Internal$EnumLite;

    move-result-object v2

    if-nez v2, :cond_6

    nop

    invoke-static {p0, p1, v1, p4, p5}, Lcom/android/framework/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_6
    goto :goto_2

    :cond_7
    :goto_3
    return-object p4
.end method

.method static blacklist filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/framework/protobuf/Internal$EnumVerifier;",
            "TUB;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    if-nez p3, :cond_0

    return-object p4

    :cond_0
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p3, v3}, Lcom/android/framework/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eq v2, v0, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    nop

    invoke-static {p0, p1, v3, p4, p5}, Lcom/android/framework/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eq v0, v1, :cond_4

    invoke-interface {p2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_4
    goto :goto_3

    :cond_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p3, v1}, Lcom/android/framework/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v2

    if-nez v2, :cond_6

    nop

    invoke-static {p0, p1, v1, p4, p5}, Lcom/android/framework/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_6
    goto :goto_2

    :cond_7
    :goto_3
    return-object p4
.end method

.method private static blacklist getGeneratedMessageClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.android.framework.protobuf.GeneratedMessageV3"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method static blacklist getMapDefaultEntry(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/SchemaUtil;->toCamelCase(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "DefaultEntryHolder"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    if-ne v3, v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-static {v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to look up map field default entry holder class for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist getUnknownFieldSetSchema(Z)Lcom/android/framework/protobuf/UnknownFieldSchema;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/framework/protobuf/SchemaUtil;->getUnknownFieldSetSchemaClass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/UnknownFieldSchema;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v1

    return-object v0
.end method

.method private static blacklist getUnknownFieldSetSchemaClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.android.framework.protobuf.UnknownFieldSetSchema"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method static blacklist mergeExtensions(Lcom/android/framework/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "FT::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TFT;>;>(",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "TFT;>;TT;TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->getMutableExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/FieldSet;->mergeFrom(Lcom/android/framework/protobuf/FieldSet;)V

    :cond_0
    return-void
.end method

.method static blacklist mergeMap(Lcom/android/framework/protobuf/MapFieldSchema;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/MapFieldSchema;",
            "TT;TT;J)V"
        }
    .end annotation

    nop

    invoke-static {p1, p3, p4}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, p4}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/android/framework/protobuf/MapFieldSchema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, p3, p4, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static blacklist mergeUnknownFields(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/UnknownFieldSchema;->merge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static blacklist proto2UnknownFieldSetSchema()Lcom/android/framework/protobuf/UnknownFieldSchema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation

    sget-object v0, Lcom/android/framework/protobuf/SchemaUtil;->PROTO2_UNKNOWN_FIELD_SET_SCHEMA:Lcom/android/framework/protobuf/UnknownFieldSchema;

    return-object v0
.end method

.method public static blacklist proto3UnknownFieldSetSchema()Lcom/android/framework/protobuf/UnknownFieldSchema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation

    sget-object v0, Lcom/android/framework/protobuf/SchemaUtil;->PROTO3_UNKNOWN_FIELD_SET_SCHEMA:Lcom/android/framework/protobuf/UnknownFieldSchema;

    return-object v0
.end method

.method public static blacklist requireGeneratedMessage(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-class v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/framework/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/framework/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message classes must extend GeneratedMessageV3 or GeneratedMessageLite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method static blacklist safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static blacklist shouldUseTableSwitch(III)Z
    .locals 16

    move/from16 v0, p1

    move/from16 v1, p2

    const/16 v2, 0x28

    const/4 v3, 0x1

    if-ge v0, v2, :cond_0

    return v3

    :cond_0
    int-to-long v4, v0

    move/from16 v2, p0

    int-to-long v6, v2

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    const-wide/16 v6, 0x3

    const-wide/16 v8, 0x2

    int-to-long v10, v1

    mul-long/2addr v10, v8

    const-wide/16 v8, 0x3

    add-long/2addr v10, v8

    int-to-long v12, v1

    add-long/2addr v12, v8

    mul-long v14, v6, v8

    add-long/2addr v14, v4

    mul-long/2addr v8, v12

    add-long/2addr v8, v10

    cmp-long v8, v14, v8

    if-gtz v8, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public static blacklist shouldUseTableSwitch([Lcom/android/framework/protobuf/FieldInfo;)Z
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    aget-object v0, p0, v1

    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldInfo;->getFieldNumber()I

    move-result v0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p0, v1

    invoke-virtual {v1}, Lcom/android/framework/protobuf/FieldInfo;->getFieldNumber()I

    move-result v1

    array-length v2, p0

    invoke-static {v0, v1, v2}, Lcom/android/framework/protobuf/SchemaUtil;->shouldUseTableSwitch(III)Z

    move-result v2

    return v2
.end method

.method static blacklist storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "IITUB;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    if-nez p3, :cond_0

    invoke-virtual {p4, p0}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_0
    int-to-long v0, p2

    invoke-virtual {p4, p3, p1, v0, v1}, Lcom/android/framework/protobuf/UnknownFieldSchema;->addVarint(Ljava/lang/Object;IJ)V

    return-object p3
.end method

.method static blacklist toCamelCase(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-gt v3, v2, :cond_1

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_1

    if-eqz p1, :cond_0

    add-int/lit8 v3, v2, -0x20

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const/4 p1, 0x0

    goto :goto_3

    :cond_1
    const/16 v3, 0x41

    if-gt v3, v2, :cond_3

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_3

    if-nez v1, :cond_2

    if-nez p1, :cond_2

    add-int/lit8 v3, v2, 0x20

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    const/16 v3, 0x30

    if-gt v3, v2, :cond_4

    const/16 v3, 0x39

    if-gt v2, v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist unknownFieldSetLiteSchema()Lcom/android/framework/protobuf/UnknownFieldSchema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation

    sget-object v0, Lcom/android/framework/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_LITE_SCHEMA:Lcom/android/framework/protobuf/UnknownFieldSchema;

    return-object v0
.end method

.method public static blacklist writeBool(IZLcom/android/framework/protobuf/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-interface {p2, p0, v0}, Lcom/android/framework/protobuf/Writer;->writeBool(IZ)V

    :cond_0
    return-void
.end method

.method public static blacklist writeBoolList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeBoolList(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static blacklist writeBytes(ILcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    :cond_0
    return-void
.end method

.method public static blacklist writeBytesList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeBytesList(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public static blacklist writeDouble(IDLcom/android/framework/protobuf/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-interface {p3, p0, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeDouble(ID)V

    :cond_0
    return-void
.end method

.method public static blacklist writeDoubleList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeDoubleList(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static blacklist writeEnum(IILcom/android/framework/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeEnum(II)V

    :cond_0
    return-void
.end method

.method public static blacklist writeEnumList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeEnumList(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static blacklist writeFixed32(IILcom/android/framework/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeFixed32(II)V

    :cond_0
    return-void
.end method

.method public static blacklist writeFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeFixed32List(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static blacklist writeFixed64(IJLcom/android/framework/protobuf/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-interface {p3, p0, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeFixed64(IJ)V

    :cond_0
    return-void
.end method

.method public static blacklist writeFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeFixed64List(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static blacklist writeFloat(IFLcom/android/framework/protobuf/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeFloat(IF)V

    :cond_0
    return-void
.end method

.method public static blacklist writeFloatList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeFloatList(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static blacklist writeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeGroupList(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public static blacklist writeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Lcom/android/framework/protobuf/Schema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/android/framework/protobuf/Writer;",
            "Lcom/android/framework/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)V

    :cond_0
    return-void
.end method

.method public static blacklist writeInt32(IILcom/android/framework/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeInt32(II)V

    :cond_0
    return-void
.end method

.method public static blacklist writeInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeInt32List(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static blacklist writeInt64(IJLcom/android/framework/protobuf/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-interface {p3, p0, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeInt64(IJ)V

    :cond_0
    return-void
.end method

.method public static blacklist writeInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeInt64List(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static blacklist writeLazyFieldList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/framework/protobuf/LazyFieldLite;

    invoke-virtual {v2, p2, p0}, Lcom/android/framework/protobuf/LazyFieldLite;->writeTo(Lcom/android/framework/protobuf/Writer;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static blacklist writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static blacklist writeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeMessageList(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public static blacklist writeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Lcom/android/framework/protobuf/Schema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/android/framework/protobuf/Writer;",
            "Lcom/android/framework/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)V

    :cond_0
    return-void
.end method

.method public static blacklist writeSFixed32(IILcom/android/framework/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeSFixed32(II)V

    :cond_0
    return-void
.end method

.method public static blacklist writeSFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeSFixed32List(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static blacklist writeSFixed64(IJLcom/android/framework/protobuf/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-interface {p3, p0, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeSFixed64(IJ)V

    :cond_0
    return-void
.end method

.method public static blacklist writeSFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeSFixed64List(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static blacklist writeSInt32(IILcom/android/framework/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeSInt32(II)V

    :cond_0
    return-void
.end method

.method public static blacklist writeSInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeSInt32List(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static blacklist writeSInt64(IJLcom/android/framework/protobuf/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-interface {p3, p0, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeSInt64(IJ)V

    :cond_0
    return-void
.end method

.method public static blacklist writeSInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeSInt64List(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static blacklist writeString(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0, p2}, Lcom/android/framework/protobuf/SchemaUtil;->writeStringInternal(ILjava/lang/String;Lcom/android/framework/protobuf/Writer;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/ByteString;

    invoke-static {p0, v0, p2}, Lcom/android/framework/protobuf/SchemaUtil;->writeBytes(ILcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/Writer;)V

    :goto_0
    return-void
.end method

.method private static blacklist writeStringInternal(ILjava/lang/String;Lcom/android/framework/protobuf/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeString(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static blacklist writeStringList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeStringList(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public static blacklist writeUInt32(IILcom/android/framework/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeUInt32(II)V

    :cond_0
    return-void
.end method

.method public static blacklist writeUInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeUInt32List(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static blacklist writeUInt64(IJLcom/android/framework/protobuf/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-interface {p3, p0, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeUInt64(IJ)V

    :cond_0
    return-void
.end method

.method public static blacklist writeUInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeUInt64List(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method
