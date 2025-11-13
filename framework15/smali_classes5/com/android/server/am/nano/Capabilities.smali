.class public final Lcom/android/server/am/nano/Capabilities;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "Capabilities.java"


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/am/nano/Capabilities;


# instance fields
.field public blacklist frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

.field public blacklist values:[Lcom/android/server/am/nano/Capability;

.field public blacklist vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

.field public blacklist vmInfo:Lcom/android/server/am/nano/VMInfo;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/am/nano/Capabilities;->clear()Lcom/android/server/am/nano/Capabilities;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/am/nano/Capabilities;
    .locals 2

    sget-object v0, Lcom/android/server/am/nano/Capabilities;->_emptyArray:[Lcom/android/server/am/nano/Capabilities;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/nano/Capabilities;->_emptyArray:[Lcom/android/server/am/nano/Capabilities;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/am/nano/Capabilities;

    sput-object v1, Lcom/android/server/am/nano/Capabilities;->_emptyArray:[Lcom/android/server/am/nano/Capabilities;

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
    sget-object v0, Lcom/android/server/am/nano/Capabilities;->_emptyArray:[Lcom/android/server/am/nano/Capabilities;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/am/nano/Capabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/am/nano/Capabilities;

    invoke-direct {v0}, Lcom/android/server/am/nano/Capabilities;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/am/nano/Capabilities;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/am/nano/Capabilities;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/am/nano/Capabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/am/nano/Capabilities;

    invoke-direct {v0}, Lcom/android/server/am/nano/Capabilities;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/nano/Capabilities;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/am/nano/Capabilities;
    .locals 1

    invoke-static {}, Lcom/android/server/am/nano/Capability;->emptyArray()[Lcom/android/server/am/nano/Capability;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    invoke-static {}, Lcom/android/server/am/nano/VMCapability;->emptyArray()[Lcom/android/server/am/nano/VMCapability;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    invoke-static {}, Lcom/android/server/am/nano/FrameworkCapability;->emptyArray()[Lcom/android/server/am/nano/FrameworkCapability;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/nano/Capabilities;->vmInfo:Lcom/android/server/am/nano/VMInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/nano/Capabilities;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 4

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    nop

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    nop

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    array-length v1, v1

    if-lez v1, :cond_5

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    aget-object v2, v2, v1

    if-eqz v2, :cond_4

    nop

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->vmInfo:Lcom/android/server/am/nano/VMInfo;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->vmInfo:Lcom/android/server/am/nano/VMInfo;

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    return v0
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

    invoke-virtual {p0, p1}, Lcom/android/server/am/nano/Capabilities;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/am/nano/Capabilities;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/am/nano/Capabilities;
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

    if-nez v1, :cond_a

    return-object p0

    :sswitch_0
    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->vmInfo:Lcom/android/server/am/nano/VMInfo;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/am/nano/VMInfo;

    invoke-direct {v1}, Lcom/android/server/am/nano/VMInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/nano/Capabilities;->vmInfo:Lcom/android/server/am/nano/VMInfo;

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->vmInfo:Lcom/android/server/am/nano/VMInfo;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_7

    :sswitch_1
    nop

    const/16 v2, 0x1a

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    array-length v3, v3

    :goto_1
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/am/nano/FrameworkCapability;

    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_3

    new-instance v1, Lcom/android/server/am/nano/FrameworkCapability;

    invoke-direct {v1}, Lcom/android/server/am/nano/FrameworkCapability;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/android/server/am/nano/FrameworkCapability;

    invoke-direct {v1}, Lcom/android/server/am/nano/FrameworkCapability;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    goto/16 :goto_7

    :sswitch_2
    nop

    const/16 v2, 0x12

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    array-length v3, v3

    :goto_3
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/am/nano/VMCapability;

    if-eqz v3, :cond_5

    iget-object v5, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_6

    new-instance v1, Lcom/android/server/am/nano/VMCapability;

    invoke-direct {v1}, Lcom/android/server/am/nano/VMCapability;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    new-instance v1, Lcom/android/server/am/nano/VMCapability;

    invoke-direct {v1}, Lcom/android/server/am/nano/VMCapability;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    goto :goto_7

    :sswitch_3
    nop

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_5

    :cond_7
    iget-object v3, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    array-length v3, v3

    :goto_5
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/am/nano/Capability;

    if-eqz v3, :cond_8

    iget-object v5, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_6
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_9

    new-instance v1, Lcom/android/server/am/nano/Capability;

    invoke-direct {v1}, Lcom/android/server/am/nano/Capability;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    new-instance v1, Lcom/android/server/am/nano/Capability;

    invoke-direct {v1}, Lcom/android/server/am/nano/Capability;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    goto :goto_7

    :sswitch_4
    return-object p0

    :cond_a
    :goto_7
    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0xa -> :sswitch_3
        0x12 -> :sswitch_2
        0x1a -> :sswitch_1
        0x22 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    array-length v0, v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/server/am/nano/Capabilities;->vmInfo:Lcom/android/server/am/nano/VMInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->vmInfo:Lcom/android/server/am/nano/VMInfo;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_6
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
