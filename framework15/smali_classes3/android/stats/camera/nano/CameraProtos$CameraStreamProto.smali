.class public final Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "CameraProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/stats/camera/nano/CameraProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraStreamProto"
.end annotation


# static fields
.field public static final blacklist CAPTURE_LATENCY:I = 0x1

.field public static final blacklist UNKNOWN:I

.field private static volatile blacklist _emptyArray:[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;


# instance fields
.field public blacklist colorSpace:I

.field public blacklist dataSpace:I

.field public blacklist dynamicRangeProfile:J

.field public blacklist errorCount:J

.field public blacklist firstCaptureLatencyMillis:I

.field public blacklist format:I

.field public blacklist height:I

.field public blacklist histogramBins:[F

.field public blacklist histogramCounts:[J

.field public blacklist histogramType:I

.field public blacklist maxAppBuffers:I

.field public blacklist maxHalBuffers:I

.field public blacklist requestCount:J

.field public blacklist streamUseCase:J

.field public blacklist usage:J

.field public blacklist width:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->clear()Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    return-void
.end method

.method public static blacklist emptyArray()[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    .locals 2

    sget-object v0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->_emptyArray:[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->_emptyArray:[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    sput-object v1, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->_emptyArray:[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

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
    sget-object v0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->_emptyArray:[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    invoke-direct {v0}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;-><init>()V

    invoke-virtual {v0, p0}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    invoke-direct {v0}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    sget-object v3, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v3, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    sget-object v3, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    iput-object v3, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->colorSpace:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 9

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    const/4 v3, 0x3

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    const/4 v3, 0x4

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_4

    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    const/4 v1, 0x5

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    const/4 v1, 0x6

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_6

    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    const/4 v1, 0x7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    if-eqz v1, :cond_7

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    const/16 v4, 0x8

    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    if-eqz v1, :cond_8

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    const/16 v4, 0x9

    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    if-eqz v1, :cond_9

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    const/16 v4, 0xa

    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    if-eqz v1, :cond_a

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    const/16 v4, 0xb

    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    array-length v1, v1

    if-lez v1, :cond_b

    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    iget-object v3, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    array-length v3, v3

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    :cond_b
    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    array-length v1, v1

    if-lez v1, :cond_d

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    array-length v4, v4

    if-ge v3, v4, :cond_c

    iget-object v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    aget-wide v4, v4, v3

    nop

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v8

    add-int/2addr v1, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_c
    add-int/2addr v0, v1

    iget-object v3, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    array-length v3, v3

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    :cond_d
    iget-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_e

    iget-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    const/16 v3, 0xe

    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_f

    iget-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    const/16 v3, 0xf

    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->colorSpace:I

    if-eqz v1, :cond_10

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->colorSpace:I

    const/16 v2, 0x10

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    .locals 10
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

    if-nez v1, :cond_d

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->colorSpace:I

    goto/16 :goto_b

    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    goto/16 :goto_b

    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    goto/16 :goto_b

    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    iget-object v6, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    if-nez v6, :cond_1

    move v6, v1

    goto :goto_2

    :cond_1
    iget-object v6, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    array-length v6, v6

    :goto_2
    add-int v7, v6, v4

    new-array v7, v7, [J

    if-eqz v6, :cond_2

    iget-object v8, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    invoke-static {v8, v1, v7, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_3
    array-length v1, v7

    if-ge v6, v1, :cond_3

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    aput-wide v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    iput-object v7, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_b

    :sswitch_4
    nop

    const/16 v2, 0x68

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    iget-object v3, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    array-length v3, v3

    :goto_4
    add-int v4, v3, v2

    new-array v4, v4, [J

    if-eqz v3, :cond_5

    iget-object v5, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_5
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_6

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    aput-wide v5, v4, v3

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    aput-wide v5, v4, v3

    iput-object v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    goto/16 :goto_b

    :sswitch_5
    nop

    const/16 v2, 0x65

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_6

    :cond_7
    iget-object v3, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    array-length v3, v3

    :goto_6
    add-int v4, v3, v2

    new-array v4, v4, [F

    if-eqz v3, :cond_8

    iget-object v5, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_7
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_9

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    iput-object v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    goto/16 :goto_b

    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    div-int/lit8 v4, v2, 0x4

    iget-object v5, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    if-nez v5, :cond_a

    move v5, v1

    goto :goto_8

    :cond_a
    iget-object v5, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    array-length v5, v5

    :goto_8
    add-int v6, v5, v4

    new-array v6, v6, [F

    if-eqz v5, :cond_b

    iget-object v7, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    invoke-static {v7, v1, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_9
    array-length v1, v6

    if-ge v5, v1, :cond_c

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_c
    iput-object v6, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_b

    :sswitch_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_a

    :pswitch_0
    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    :goto_a
    goto :goto_b

    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    goto :goto_b

    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    goto :goto_b

    :sswitch_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    goto :goto_b

    :sswitch_b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    goto :goto_b

    :sswitch_c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    goto :goto_b

    :sswitch_d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    goto :goto_b

    :sswitch_e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    goto :goto_b

    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    goto :goto_b

    :sswitch_10
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    goto :goto_b

    :sswitch_11
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    goto :goto_b

    :sswitch_12
    return-object p0

    :cond_d
    :goto_b
    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_12
        0x8 -> :sswitch_11
        0x10 -> :sswitch_10
        0x18 -> :sswitch_f
        0x20 -> :sswitch_e
        0x28 -> :sswitch_d
        0x30 -> :sswitch_c
        0x38 -> :sswitch_b
        0x40 -> :sswitch_a
        0x48 -> :sswitch_9
        0x50 -> :sswitch_8
        0x58 -> :sswitch_7
        0x62 -> :sswitch_6
        0x65 -> :sswitch_5
        0x68 -> :sswitch_4
        0x6a -> :sswitch_3
        0x70 -> :sswitch_2
        0x78 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
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

    invoke-virtual {p0, p1}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_4
    iget-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_5
    iget-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_6
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_7
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_8
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_9
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_a
    iget-object v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    array-length v1, v1

    if-ge v0, v1, :cond_b

    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    aget v1, v1, v0

    const/16 v4, 0xc

    invoke-virtual {p1, v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_b
    iget-object v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    array-length v0, v0

    if-lez v0, :cond_c

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    array-length v1, v1

    if-ge v0, v1, :cond_c

    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    aget-wide v4, v1, v0

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    iget-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/16 v0, 0xe

    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_d
    iget-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/16 v0, 0xf

    iget-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_e
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->colorSpace:I

    if-eqz v0, :cond_f

    const/16 v0, 0x10

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->colorSpace:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_f
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
