.class public final Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;


# instance fields
.field public count:I

.field public isMutable:Z

.field public memoizedSerializedSize:I

.field public objects:[Ljava/lang/Object;

.field public tags:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v3, v1, v0, v2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    iput p1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    iput-object p3, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iput-boolean p4, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->isMutable:Z

    return-void
.end method

.method public static mutableCopyOf(Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;
    .locals 6

    iget v0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    iget v1, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iget-object v2, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    iget v3, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    iget v4, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget p0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    iget p1, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method public static newInstance()Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;
    .locals 1

    new-instance v0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final ensureCapacity(I)V
    .locals 3

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    array-length v1, v0

    if-le p1, v1, :cond_2

    iget v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v1

    if-ge v2, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    const/16 v1, 0x8

    if-ge p1, v1, :cond_1

    move p1, v1

    :cond_1
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    iget v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    iget v3, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    if-ne v2, v3, :cond_7

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    iget-object v4, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    move v5, v1

    :goto_0
    if-ge v5, v2, :cond_4

    aget v6, v3, v5

    aget v7, v4, v5

    if-eq v6, v7, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget p0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    move v3, v1

    :goto_1
    if-ge v3, p0, :cond_6

    aget-object v4, v2, v3

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method public final getSerializedSize()I
    .locals 6

    iget v0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    aget v2, v2, v0

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    if-eqz v2, :cond_5

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeFixed32Size(I)I

    move-result v2

    :goto_1
    add-int/2addr v2, v1

    move v1, v2

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_2
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int/2addr v2, v4

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v3

    :goto_2
    add-int/2addr v3, v2

    add-int/2addr v3, v1

    move v1, v3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-static {v3, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeFixed64Size(I)I

    move-result v2

    goto :goto_1

    :cond_5
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v3

    goto :goto_2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    iput v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    return v1
.end method

.method public final hashCode()I
    .locals 8

    iget v0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    const/4 v3, 0x0

    const/16 v4, 0x11

    move v5, v3

    move v6, v4

    :goto_0
    if-ge v5, v0, :cond_0

    mul-int/lit8 v6, v6, 0x1f

    aget v7, v2, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget p0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    :goto_1
    if-ge v3, p0, :cond_1

    mul-int/lit8 v4, v4, 0x1f

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v4

    return v1
.end method

.method public final storeField(ILjava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->isMutable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->ensureCapacity(I)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    aput p1, v0, v1

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final writeTo(Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x3

    iget v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;->ASCENDING:Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    if-ge v2, v3, :cond_6

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    aget v3, v3, v2

    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v4, v4, v2

    ushr-int/lit8 v5, v3, 0x3

    and-int/lit8 v3, v3, 0x7

    if-eqz v3, :cond_5

    if-eq v3, v0, :cond_4

    const/4 v6, 0x2

    if-eq v3, v6, :cond_3

    if-eq v3, v1, :cond_2

    const/4 v6, 0x5

    if-ne v3, v6, :cond_1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v5, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeFixed32(II)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_2
    sget-object v3, Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;->ASCENDING:Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;

    iget-object v3, p1, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->output:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {v3, v5, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeTag(II)V

    check-cast v4, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    invoke-virtual {v4, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->writeTo(Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;)V

    iget-object v3, p1, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->output:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v4, 0x4

    invoke-virtual {v3, v5, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeTag(II)V

    goto :goto_1

    :cond_3
    check-cast v4, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {p1, v5, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    goto :goto_1

    :cond_4
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v5, v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeFixed64(IJ)V

    goto :goto_1

    :cond_5
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v5, v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeInt64(IJ)V

    :goto_1
    add-int/2addr v2, v0

    goto :goto_0

    :cond_6
    return-void
.end method
