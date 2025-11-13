.class public final Landroid/aconfig/nano/Aconfig$tracepoint;
.super Landroid/internal/framework/protobuf/nano/MessageNano;
.source "Aconfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/aconfig/nano/Aconfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "tracepoint"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Landroid/aconfig/nano/Aconfig$tracepoint;


# instance fields
.field public blacklist permission:I

.field public blacklist source:Ljava/lang/String;

.field public blacklist state:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Landroid/aconfig/nano/Aconfig$tracepoint;->clear()Landroid/aconfig/nano/Aconfig$tracepoint;

    return-void
.end method

.method public static blacklist emptyArray()[Landroid/aconfig/nano/Aconfig$tracepoint;
    .locals 2

    sget-object v0, Landroid/aconfig/nano/Aconfig$tracepoint;->_emptyArray:[Landroid/aconfig/nano/Aconfig$tracepoint;

    if-nez v0, :cond_1

    sget-object v0, Landroid/internal/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/aconfig/nano/Aconfig$tracepoint;->_emptyArray:[Landroid/aconfig/nano/Aconfig$tracepoint;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/aconfig/nano/Aconfig$tracepoint;

    sput-object v1, Landroid/aconfig/nano/Aconfig$tracepoint;->_emptyArray:[Landroid/aconfig/nano/Aconfig$tracepoint;

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
    sget-object v0, Landroid/aconfig/nano/Aconfig$tracepoint;->_emptyArray:[Landroid/aconfig/nano/Aconfig$tracepoint;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$tracepoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/aconfig/nano/Aconfig$tracepoint;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$tracepoint;-><init>()V

    invoke-virtual {v0, p0}, Landroid/aconfig/nano/Aconfig$tracepoint;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$tracepoint;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/aconfig/nano/Aconfig$tracepoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Landroid/aconfig/nano/Aconfig$tracepoint;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$tracepoint;-><init>()V

    invoke-static {v0, p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->mergeFrom(Landroid/internal/framework/protobuf/nano/MessageNano;[B)Landroid/internal/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/aconfig/nano/Aconfig$tracepoint;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Landroid/aconfig/nano/Aconfig$tracepoint;
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->source:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->state:I

    iput v0, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->permission:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 4

    invoke-super {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->source:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->source:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->state:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->state:I

    const/4 v3, 0x2

    invoke-static {v3, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->permission:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->permission:I

    const/4 v2, 0x3

    invoke-static {v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public blacklist mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$tracepoint;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iput v1, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->permission:I

    :goto_1
    goto :goto_3

    :sswitch_1
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    iput v1, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->state:I

    :goto_2
    goto :goto_3

    :sswitch_2
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->source:Ljava/lang/String;

    goto :goto_3

    :sswitch_3
    return-object p0

    :cond_0
    :goto_3
    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0xa -> :sswitch_2
        0x10 -> :sswitch_1
        0x18 -> :sswitch_0
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

    invoke-virtual {p0, p1}, Landroid/aconfig/nano/Aconfig$tracepoint;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$tracepoint;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->source:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->source:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_0
    iget v0, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->state:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    iget v2, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->state:I

    invoke-virtual {p1, v0, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget v0, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->permission:I

    if-eq v0, v1, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Landroid/aconfig/nano/Aconfig$tracepoint;->permission:I

    invoke-virtual {p1, v0, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    invoke-super {p0, p1}, Landroid/internal/framework/protobuf/nano/MessageNano;->writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
