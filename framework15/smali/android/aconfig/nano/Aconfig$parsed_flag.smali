.class public final Landroid/aconfig/nano/Aconfig$parsed_flag;
.super Landroid/internal/framework/protobuf/nano/MessageNano;
.source "Aconfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/aconfig/nano/Aconfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "parsed_flag"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Landroid/aconfig/nano/Aconfig$parsed_flag;


# instance fields
.field public blacklist bug:[Ljava/lang/String;

.field public blacklist container:Ljava/lang/String;

.field public blacklist description:Ljava/lang/String;

.field public blacklist isExported:Z

.field public blacklist isFixedReadOnly:Z

.field public blacklist metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

.field public blacklist name:Ljava/lang/String;

.field public blacklist namespace:Ljava/lang/String;

.field public blacklist package_:Ljava/lang/String;

.field public blacklist permission:I

.field public blacklist state:I

.field public blacklist trace:[Landroid/aconfig/nano/Aconfig$tracepoint;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Landroid/aconfig/nano/Aconfig$parsed_flag;->clear()Landroid/aconfig/nano/Aconfig$parsed_flag;

    return-void
.end method

.method public static blacklist emptyArray()[Landroid/aconfig/nano/Aconfig$parsed_flag;
    .locals 2

    sget-object v0, Landroid/aconfig/nano/Aconfig$parsed_flag;->_emptyArray:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    if-nez v0, :cond_1

    sget-object v0, Landroid/internal/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/aconfig/nano/Aconfig$parsed_flag;->_emptyArray:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/aconfig/nano/Aconfig$parsed_flag;

    sput-object v1, Landroid/aconfig/nano/Aconfig$parsed_flag;->_emptyArray:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Landroid/aconfig/nano/Aconfig$parsed_flag;->_emptyArray:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$parsed_flag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/aconfig/nano/Aconfig$parsed_flag;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$parsed_flag;-><init>()V

    invoke-virtual {v0, p0}, Landroid/aconfig/nano/Aconfig$parsed_flag;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$parsed_flag;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/aconfig/nano/Aconfig$parsed_flag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Landroid/aconfig/nano/Aconfig$parsed_flag;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$parsed_flag;-><init>()V

    invoke-static {v0, p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->mergeFrom(Landroid/internal/framework/protobuf/nano/MessageNano;[B)Landroid/internal/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/aconfig/nano/Aconfig$parsed_flag;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Landroid/aconfig/nano/Aconfig$parsed_flag;
    .locals 2

    const-string v0, ""

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->package_:Ljava/lang/String;

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->namespace:Ljava/lang/String;

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->description:Ljava/lang/String;

    sget-object v1, Landroid/internal/framework/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->state:I

    iput v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->permission:I

    invoke-static {}, Landroid/aconfig/nano/Aconfig$tracepoint;->emptyArray()[Landroid/aconfig/nano/Aconfig$tracepoint;

    move-result-object v1

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isFixedReadOnly:Z

    iput-boolean v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isExported:Z

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->container:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    const/4 v0, -0x1

    iput v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 8

    invoke-super {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->package_:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->package_:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->name:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v4, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->namespace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->namespace:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v4, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->description:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-static {v4, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_6

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_5

    iget-object v6, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    aget-object v6, v6, v5

    if-eqz v6, :cond_4

    add-int/lit8 v1, v1, 0x1

    nop

    invoke-static {v6}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v4, v7

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    add-int/2addr v0, v4

    mul-int/lit8 v5, v1, 0x1

    add-int/2addr v0, v5

    :cond_6
    iget v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->state:I

    if-eq v1, v3, :cond_7

    iget v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->state:I

    const/4 v4, 0x6

    invoke-static {v4, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->permission:I

    if-eq v1, v3, :cond_8

    iget v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->permission:I

    const/4 v3, 0x7

    invoke-static {v3, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    array-length v1, v1

    if-lez v1, :cond_a

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    array-length v3, v3

    if-ge v1, v3, :cond_a

    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    aget-object v3, v3, v1

    if-eqz v3, :cond_9

    nop

    const/16 v4, 0x8

    invoke-static {v4, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILandroid/internal/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    iget-boolean v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isFixedReadOnly:Z

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isFixedReadOnly:Z

    const/16 v3, 0x9

    invoke-static {v3, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-boolean v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isExported:Z

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isExported:Z

    const/16 v3, 0xa

    invoke-static {v3, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->container:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->container:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-static {v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    const/16 v2, 0xc

    invoke-static {v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILandroid/internal/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    return v0
.end method

.method public blacklist mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$parsed_flag;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_7

    return-object p0

    :sswitch_0
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    if-nez v1, :cond_0

    new-instance v1, Landroid/aconfig/nano/Aconfig$flag_metadata;

    invoke-direct {v1}, Landroid/aconfig/nano/Aconfig$flag_metadata;-><init>()V

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    :cond_0
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    invoke-virtual {p1, v1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Landroid/internal/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_7

    :sswitch_1
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->container:Ljava/lang/String;

    goto/16 :goto_7

    :sswitch_2
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isExported:Z

    goto/16 :goto_7

    :sswitch_3
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isFixedReadOnly:Z

    goto/16 :goto_7

    :sswitch_4
    nop

    const/16 v2, 0x42

    invoke-static {p1, v2}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    array-length v3, v3

    :goto_1
    add-int v4, v3, v2

    new-array v4, v4, [Landroid/aconfig/nano/Aconfig$tracepoint;

    if-eqz v3, :cond_2

    iget-object v5, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_3

    new-instance v1, Landroid/aconfig/nano/Aconfig$tracepoint;

    invoke-direct {v1}, Landroid/aconfig/nano/Aconfig$tracepoint;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Landroid/internal/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    new-instance v1, Landroid/aconfig/nano/Aconfig$tracepoint;

    invoke-direct {v1}, Landroid/aconfig/nano/Aconfig$tracepoint;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Landroid/internal/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    goto/16 :goto_7

    :sswitch_5
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iput v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->permission:I

    :goto_3
    goto :goto_7

    :sswitch_6
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    iput v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->state:I

    :goto_4
    goto :goto_7

    :sswitch_7
    nop

    const/16 v2, 0x2a

    invoke-static {p1, v2}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_5

    :cond_4
    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    array-length v3, v3

    :goto_5
    add-int v4, v3, v2

    new-array v4, v4, [Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v5, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_6
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_6

    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    iput-object v4, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    goto :goto_7

    :sswitch_8
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->description:Ljava/lang/String;

    goto :goto_7

    :sswitch_9
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->namespace:Ljava/lang/String;

    goto :goto_7

    :sswitch_a
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->name:Ljava/lang/String;

    goto :goto_7

    :sswitch_b
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->package_:Ljava/lang/String;

    goto :goto_7

    :sswitch_c
    return-object p0

    :cond_7
    :goto_7
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_c
        0xa -> :sswitch_b
        0x12 -> :sswitch_a
        0x1a -> :sswitch_9
        0x22 -> :sswitch_8
        0x2a -> :sswitch_7
        0x30 -> :sswitch_6
        0x38 -> :sswitch_5
        0x42 -> :sswitch_4
        0x48 -> :sswitch_3
        0x50 -> :sswitch_2
        0x5a -> :sswitch_1
        0x62 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/internal/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/aconfig/nano/Aconfig$parsed_flag;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$parsed_flag;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->package_:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->package_:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->namespace:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->description:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_4

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->state:I

    if-eq v0, v2, :cond_6

    const/4 v0, 0x6

    iget v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->state:I

    invoke-virtual {p1, v0, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_6
    iget v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->permission:I

    if-eq v0, v2, :cond_7

    const/4 v0, 0x7

    iget v2, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->permission:I

    invoke-virtual {p1, v0, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_7
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    array-length v0, v0

    if-lez v0, :cond_9

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    array-length v2, v2

    if-ge v0, v2, :cond_9

    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    aget-object v2, v2, v0

    if-eqz v2, :cond_8

    const/16 v3, 0x8

    invoke-virtual {p1, v3, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILandroid/internal/framework/protobuf/nano/MessageNano;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    iget-boolean v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isFixedReadOnly:Z

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    iget-boolean v2, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isFixedReadOnly:Z

    invoke-virtual {p1, v0, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_a
    iget-boolean v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isExported:Z

    if-eqz v0, :cond_b

    const/16 v0, 0xa

    iget-boolean v2, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isExported:Z

    invoke-virtual {p1, v0, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_b
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->container:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xb

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->container:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_c
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    if-eqz v0, :cond_d

    const/16 v0, 0xc

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    invoke-virtual {p1, v0, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILandroid/internal/framework/protobuf/nano/MessageNano;)V

    :cond_d
    invoke-super {p0, p1}, Landroid/internal/framework/protobuf/nano/MessageNano;->writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
