.class public final Lcom/android/internal/location/altitude/nano/MapParamsProto;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "MapParamsProto.java"


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/location/altitude/nano/MapParamsProto;


# instance fields
.field public blacklist cacheTileS2Level:I

.field public blacklist diskTileS2Level:I

.field public blacklist mapS2Level:I

.field public blacklist modelAMeters:D

.field public blacklist modelBMeters:D

.field public blacklist modelRmseMeters:D


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/location/altitude/nano/MapParamsProto;->clear()Lcom/android/internal/location/altitude/nano/MapParamsProto;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .locals 2

    sget-object v0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->_emptyArray:[Lcom/android/internal/location/altitude/nano/MapParamsProto;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/location/altitude/nano/MapParamsProto;->_emptyArray:[Lcom/android/internal/location/altitude/nano/MapParamsProto;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/location/altitude/nano/MapParamsProto;

    sput-object v1, Lcom/android/internal/location/altitude/nano/MapParamsProto;->_emptyArray:[Lcom/android/internal/location/altitude/nano/MapParamsProto;

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
    sget-object v0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->_emptyArray:[Lcom/android/internal/location/altitude/nano/MapParamsProto;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/location/altitude/nano/MapParamsProto;

    invoke-direct {v0}, Lcom/android/internal/location/altitude/nano/MapParamsProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/location/altitude/nano/MapParamsProto;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/location/altitude/nano/MapParamsProto;

    invoke-direct {v0}, Lcom/android/internal/location/altitude/nano/MapParamsProto;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/location/altitude/nano/MapParamsProto;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    iput v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->cacheTileS2Level:I

    iput v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->diskTileS2Level:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelAMeters:D

    iput-wide v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelBMeters:D

    iput-wide v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelRmseMeters:D

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 7

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->cacheTileS2Level:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->cacheTileS2Level:I

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->diskTileS2Level:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->diskTileS2Level:I

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-wide v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelAMeters:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-eqz v1, :cond_3

    iget-wide v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelAMeters:D

    const/4 v5, 0x4

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-wide v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelBMeters:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-eqz v1, :cond_4

    iget-wide v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelBMeters:D

    const/4 v5, 0x5

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-wide v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelRmseMeters:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    iget-wide v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelRmseMeters:D

    const/4 v3, 0x6

    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
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

    invoke-virtual {p0, p1}, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/location/altitude/nano/MapParamsProto;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/location/altitude/nano/MapParamsProto;
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
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelRmseMeters:D

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelBMeters:D

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelAMeters:D

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->diskTileS2Level:I

    goto :goto_1

    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->cacheTileS2Level:I

    goto :goto_1

    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    goto :goto_1

    :sswitch_6
    return-object p0

    :cond_0
    :goto_1
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x8 -> :sswitch_5
        0x10 -> :sswitch_4
        0x18 -> :sswitch_3
        0x21 -> :sswitch_2
        0x29 -> :sswitch_1
        0x31 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->cacheTileS2Level:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->cacheTileS2Level:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->diskTileS2Level:I

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->diskTileS2Level:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget-wide v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelAMeters:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-wide v4, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelAMeters:D

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    :cond_3
    iget-wide v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelBMeters:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-wide v4, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelBMeters:D

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    :cond_4
    iget-wide v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelRmseMeters:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelRmseMeters:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    :cond_5
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
