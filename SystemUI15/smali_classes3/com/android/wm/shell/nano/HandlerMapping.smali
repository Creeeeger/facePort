.class public final Lcom/android/wm/shell/nano/HandlerMapping;
.super Lcom/google/protobuf/nano/MessageNano;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static volatile _emptyArray:[Lcom/android/wm/shell/nano/HandlerMapping;


# instance fields
.field public id:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/wm/shell/nano/HandlerMapping;->clear()Lcom/android/wm/shell/nano/HandlerMapping;

    return-void
.end method

.method public static emptyArray()[Lcom/android/wm/shell/nano/HandlerMapping;
    .locals 2

    sget-object v0, Lcom/android/wm/shell/nano/HandlerMapping;->_emptyArray:[Lcom/android/wm/shell/nano/HandlerMapping;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/wm/shell/nano/HandlerMapping;->_emptyArray:[Lcom/android/wm/shell/nano/HandlerMapping;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/wm/shell/nano/HandlerMapping;

    sput-object v1, Lcom/android/wm/shell/nano/HandlerMapping;->_emptyArray:[Lcom/android/wm/shell/nano/HandlerMapping;

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
    sget-object v0, Lcom/android/wm/shell/nano/HandlerMapping;->_emptyArray:[Lcom/android/wm/shell/nano/HandlerMapping;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/wm/shell/nano/HandlerMapping;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/nano/HandlerMapping;->id:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/wm/shell/nano/HandlerMapping;->name:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public computeSerializedSize()I
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/wm/shell/nano/HandlerMapping;->id:I

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    const/4 v1, 0x2

    iget-object p0, p0, Lcom/android/wm/shell/nano/HandlerMapping;->name:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/wm/shell/nano/HandlerMapping;
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

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/nano/HandlerMapping;->name:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/nano/HandlerMapping;->id:I

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/nano/HandlerMapping;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/wm/shell/nano/HandlerMapping;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/wm/shell/nano/HandlerMapping;->id:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    const/4 v0, 0x2

    iget-object p0, p0, Lcom/android/wm/shell/nano/HandlerMapping;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    return-void
.end method
