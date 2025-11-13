.class public final Landroid/stats/devicepolicy/nano/StringList;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "StringList.java"


# static fields
.field private static volatile blacklist _emptyArray:[Landroid/stats/devicepolicy/nano/StringList;


# instance fields
.field public blacklist stringValue:[Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Landroid/stats/devicepolicy/nano/StringList;->clear()Landroid/stats/devicepolicy/nano/StringList;

    return-void
.end method

.method public static blacklist emptyArray()[Landroid/stats/devicepolicy/nano/StringList;
    .locals 2

    sget-object v0, Landroid/stats/devicepolicy/nano/StringList;->_emptyArray:[Landroid/stats/devicepolicy/nano/StringList;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/stats/devicepolicy/nano/StringList;->_emptyArray:[Landroid/stats/devicepolicy/nano/StringList;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/stats/devicepolicy/nano/StringList;

    sput-object v1, Landroid/stats/devicepolicy/nano/StringList;->_emptyArray:[Landroid/stats/devicepolicy/nano/StringList;

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
    sget-object v0, Landroid/stats/devicepolicy/nano/StringList;->_emptyArray:[Landroid/stats/devicepolicy/nano/StringList;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/devicepolicy/nano/StringList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/stats/devicepolicy/nano/StringList;

    invoke-direct {v0}, Landroid/stats/devicepolicy/nano/StringList;-><init>()V

    invoke-virtual {v0, p0}, Landroid/stats/devicepolicy/nano/StringList;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/devicepolicy/nano/StringList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/stats/devicepolicy/nano/StringList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Landroid/stats/devicepolicy/nano/StringList;

    invoke-direct {v0}, Landroid/stats/devicepolicy/nano/StringList;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/stats/devicepolicy/nano/StringList;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Landroid/stats/devicepolicy/nano/StringList;
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Landroid/stats/devicepolicy/nano/StringList;->stringValue:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/stats/devicepolicy/nano/StringList;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 6

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Landroid/stats/devicepolicy/nano/StringList;->stringValue:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/stats/devicepolicy/nano/StringList;->stringValue:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Landroid/stats/devicepolicy/nano/StringList;->stringValue:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Landroid/stats/devicepolicy/nano/StringList;->stringValue:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    nop

    invoke-static {v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v3, v1, 0x1

    add-int/2addr v0, v3

    :cond_2
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/devicepolicy/nano/StringList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    nop

    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_3

    return-object p0

    :sswitch_0
    nop

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    iget-object v2, p0, Landroid/stats/devicepolicy/nano/StringList;->stringValue:[Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroid/stats/devicepolicy/nano/StringList;->stringValue:[Ljava/lang/String;

    array-length v2, v2

    :goto_1
    add-int v4, v2, v1

    new-array v4, v4, [Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v5, p0, Landroid/stats/devicepolicy/nano/StringList;->stringValue:[Ljava/lang/String;

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    iput-object v4, p0, Landroid/stats/devicepolicy/nano/StringList;->stringValue:[Ljava/lang/String;

    goto :goto_3

    :sswitch_1
    return-object p0

    :cond_3
    :goto_3
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
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

    invoke-virtual {p0, p1}, Landroid/stats/devicepolicy/nano/StringList;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/devicepolicy/nano/StringList;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/stats/devicepolicy/nano/StringList;->stringValue:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/stats/devicepolicy/nano/StringList;->stringValue:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/stats/devicepolicy/nano/StringList;->stringValue:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/stats/devicepolicy/nano/StringList;->stringValue:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
