.class public final Landroid/ota/nano/OtaPackageMetadata$PartitionState;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "OtaPackageMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ota/nano/OtaPackageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PartitionState"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;


# instance fields
.field public blacklist build:[Ljava/lang/String;

.field public blacklist device:[Ljava/lang/String;

.field public blacklist partitionName:Ljava/lang/String;

.field public blacklist version:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->clear()Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    return-void
.end method

.method public static blacklist emptyArray()[Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    .locals 2

    sget-object v0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    sput-object v1, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

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
    sget-object v0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;-><init>()V

    invoke-virtual {v0, p0}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    .locals 2

    const-string v0, ""

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->partitionName:Ljava/lang/String;

    sget-object v1, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    sget-object v1, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->version:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 7

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->partitionName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->partitionName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    aget-object v5, v5, v4

    if-eqz v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    nop

    invoke-static {v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v3, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v0, v3

    mul-int/lit8 v4, v1, 0x1

    add-int/2addr v0, v4

    :cond_3
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_5

    iget-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    aget-object v5, v5, v4

    if-eqz v5, :cond_4

    add-int/lit8 v1, v1, 0x1

    nop

    invoke-static {v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v3, v6

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    add-int/2addr v0, v3

    mul-int/lit8 v4, v1, 0x1

    add-int/2addr v0, v4

    :cond_6
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->version:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$PartitionState;
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

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_6

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->version:Ljava/lang/String;

    goto/16 :goto_5

    :sswitch_1
    nop

    const/16 v2, 0x1a

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    array-length v3, v3

    :goto_1
    add-int v4, v3, v2

    new-array v4, v4, [Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_2

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    iput-object v4, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    goto :goto_5

    :sswitch_2
    nop

    const/16 v2, 0x12

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    array-length v3, v3

    :goto_3
    add-int v4, v3, v2

    new-array v4, v4, [Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_5

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    iput-object v4, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    goto :goto_5

    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->partitionName:Ljava/lang/String;

    goto :goto_5

    :sswitch_4
    return-object p0

    :cond_6
    :goto_5
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0xa -> :sswitch_3
        0x12 -> :sswitch_2
        0x1a -> :sswitch_1
        0x22 -> :sswitch_0
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

    invoke-virtual {p0, p1}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->partitionName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->partitionName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x4

    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->version:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
