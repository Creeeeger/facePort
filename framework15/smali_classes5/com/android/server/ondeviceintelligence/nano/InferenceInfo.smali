.class public final Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "InferenceInfo.java"


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;


# instance fields
.field public blacklist endTimeMs:J

.field public blacklist startTimeMs:J

.field public blacklist suspendedTimeMs:J

.field public blacklist uid:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->clear()Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;
    .locals 2

    sget-object v0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->_emptyArray:[Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->_emptyArray:[Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;

    sput-object v1, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->_emptyArray:[Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;

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
    sget-object v0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->_emptyArray:[Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;

    invoke-direct {v0}, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;

    invoke-direct {v0}, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->uid:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->startTimeMs:J

    iput-wide v0, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->endTimeMs:J

    iput-wide v0, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->suspendedTimeMs:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 6

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->uid:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->uid:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->startTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->startTimeMs:J

    const/4 v5, 0x2

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->endTimeMs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    iget-wide v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->endTimeMs:J

    const/4 v5, 0x3

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-wide v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->suspendedTimeMs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    iget-wide v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->suspendedTimeMs:J

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
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

    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;
    .locals 3
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

    if-nez v1, :cond_0

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->suspendedTimeMs:J

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->endTimeMs:J

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->startTimeMs:J

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->uid:I

    goto :goto_1

    :sswitch_4
    return-object p0

    :cond_0
    :goto_1
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x8 -> :sswitch_3
        0x10 -> :sswitch_2
        0x18 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->uid:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->uid:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget-wide v0, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->startTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-wide v4, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->startTimeMs:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_1
    iget-wide v0, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->endTimeMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-wide v4, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->endTimeMs:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_2
    iget-wide v0, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->suspendedTimeMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->suspendedTimeMs:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_3
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
