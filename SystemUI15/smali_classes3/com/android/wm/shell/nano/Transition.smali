.class public final Lcom/android/wm/shell/nano/Transition;
.super Lcom/google/protobuf/nano/MessageNano;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static volatile _emptyArray:[Lcom/android/wm/shell/nano/Transition;


# instance fields
.field public abortTimeNs:J

.field public dispatchTimeNs:J

.field public handler:I

.field public id:I

.field public mergeRequestTimeNs:J

.field public mergeTarget:I

.field public mergeTimeNs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/wm/shell/nano/Transition;->clear()Lcom/android/wm/shell/nano/Transition;

    return-void
.end method

.method public static emptyArray()[Lcom/android/wm/shell/nano/Transition;
    .locals 2

    sget-object v0, Lcom/android/wm/shell/nano/Transition;->_emptyArray:[Lcom/android/wm/shell/nano/Transition;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/wm/shell/nano/Transition;->_emptyArray:[Lcom/android/wm/shell/nano/Transition;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/wm/shell/nano/Transition;

    sput-object v1, Lcom/android/wm/shell/nano/Transition;->_emptyArray:[Lcom/android/wm/shell/nano/Transition;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/android/wm/shell/nano/Transition;->_emptyArray:[Lcom/android/wm/shell/nano/Transition;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/wm/shell/nano/Transition;
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/nano/Transition;->id:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/wm/shell/nano/Transition;->dispatchTimeNs:J

    iput v0, p0, Lcom/android/wm/shell/nano/Transition;->handler:I

    iput-wide v1, p0, Lcom/android/wm/shell/nano/Transition;->mergeTimeNs:J

    iput-wide v1, p0, Lcom/android/wm/shell/nano/Transition;->mergeRequestTimeNs:J

    iput v0, p0, Lcom/android/wm/shell/nano/Transition;->mergeTarget:I

    iput-wide v1, p0, Lcom/android/wm/shell/nano/Transition;->abortTimeNs:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public computeSerializedSize()I
    .locals 6

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/wm/shell/nano/Transition;->id:I

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    iget-wide v1, p0, Lcom/android/wm/shell/nano/Transition;->dispatchTimeNs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    invoke-static {v5, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/wm/shell/nano/Transition;->handler:I

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v1, p0, Lcom/android/wm/shell/nano/Transition;->mergeTimeNs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    invoke-static {v5, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-wide v1, p0, Lcom/android/wm/shell/nano/Transition;->mergeRequestTimeNs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const/4 v5, 0x5

    invoke-static {v5, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/android/wm/shell/nano/Transition;->mergeTarget:I

    if-eqz v1, :cond_4

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-wide v1, p0, Lcom/android/wm/shell/nano/Transition;->abortTimeNs:J

    cmp-long p0, v1, v3

    if-eqz p0, :cond_5

    const/4 p0, 0x7

    invoke-static {p0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_5
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/wm/shell/nano/Transition;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    const/16 v1, 0x18

    if-eq v0, v1, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    const/16 v1, 0x28

    if-eq v0, v1, :cond_3

    const/16 v1, 0x30

    if-eq v0, v1, :cond_2

    const/16 v1, 0x38

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/wm/shell/nano/Transition;->abortTimeNs:J

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/nano/Transition;->mergeTarget:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/wm/shell/nano/Transition;->mergeRequestTimeNs:J

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/wm/shell/nano/Transition;->mergeTimeNs:J

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/nano/Transition;->handler:I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/wm/shell/nano/Transition;->dispatchTimeNs:J

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/nano/Transition;->id:I

    goto :goto_0

    :cond_8
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/nano/Transition;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/wm/shell/nano/Transition;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/wm/shell/nano/Transition;->id:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget-wide v0, p0, Lcom/android/wm/shell/nano/Transition;->dispatchTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    :cond_0
    iget v0, p0, Lcom/android/wm/shell/nano/Transition;->handler:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-wide v0, p0, Lcom/android/wm/shell/nano/Transition;->mergeTimeNs:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    :cond_2
    iget-wide v0, p0, Lcom/android/wm/shell/nano/Transition;->mergeRequestTimeNs:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    :cond_3
    iget v0, p0, Lcom/android/wm/shell/nano/Transition;->mergeTarget:I

    if-eqz v0, :cond_4

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_4
    iget-wide v0, p0, Lcom/android/wm/shell/nano/Transition;->abortTimeNs:J

    cmp-long p0, v0, v2

    if-eqz p0, :cond_5

    const/4 p0, 0x7

    invoke-virtual {p1, p0, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    :cond_5
    return-void
.end method
