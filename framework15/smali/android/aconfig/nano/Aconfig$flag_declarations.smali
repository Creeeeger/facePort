.class public final Landroid/aconfig/nano/Aconfig$flag_declarations;
.super Landroid/internal/framework/protobuf/nano/MessageNano;
.source "Aconfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/aconfig/nano/Aconfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "flag_declarations"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Landroid/aconfig/nano/Aconfig$flag_declarations;


# instance fields
.field public blacklist container:Ljava/lang/String;

.field public blacklist flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

.field public blacklist package_:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Landroid/aconfig/nano/Aconfig$flag_declarations;->clear()Landroid/aconfig/nano/Aconfig$flag_declarations;

    return-void
.end method

.method public static blacklist emptyArray()[Landroid/aconfig/nano/Aconfig$flag_declarations;
    .locals 2

    sget-object v0, Landroid/aconfig/nano/Aconfig$flag_declarations;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_declarations;

    if-nez v0, :cond_1

    sget-object v0, Landroid/internal/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/aconfig/nano/Aconfig$flag_declarations;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_declarations;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/aconfig/nano/Aconfig$flag_declarations;

    sput-object v1, Landroid/aconfig/nano/Aconfig$flag_declarations;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_declarations;

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
    sget-object v0, Landroid/aconfig/nano/Aconfig$flag_declarations;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_declarations;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_declarations;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/aconfig/nano/Aconfig$flag_declarations;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$flag_declarations;-><init>()V

    invoke-virtual {v0, p0}, Landroid/aconfig/nano/Aconfig$flag_declarations;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_declarations;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/aconfig/nano/Aconfig$flag_declarations;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Landroid/aconfig/nano/Aconfig$flag_declarations;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$flag_declarations;-><init>()V

    invoke-static {v0, p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->mergeFrom(Landroid/internal/framework/protobuf/nano/MessageNano;[B)Landroid/internal/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/aconfig/nano/Aconfig$flag_declarations;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Landroid/aconfig/nano/Aconfig$flag_declarations;
    .locals 2

    const-string v0, ""

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->package_:Ljava/lang/String;

    invoke-static {}, Landroid/aconfig/nano/Aconfig$flag_declaration;->emptyArray()[Landroid/aconfig/nano/Aconfig$flag_declaration;

    move-result-object v1

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->container:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 5

    invoke-super {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->package_:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->package_:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    nop

    const/4 v4, 0x2

    invoke-static {v4, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILandroid/internal/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->container:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->container:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public blacklist mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_declarations;
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

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_3

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->container:Ljava/lang/String;

    goto :goto_3

    :sswitch_1
    nop

    const/16 v1, 0x12

    invoke-static {p1, v1}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    array-length v2, v2

    :goto_1
    add-int v4, v2, v1

    new-array v4, v4, [Landroid/aconfig/nano/Aconfig$flag_declaration;

    if-eqz v2, :cond_1

    iget-object v5, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    new-instance v3, Landroid/aconfig/nano/Aconfig$flag_declaration;

    invoke-direct {v3}, Landroid/aconfig/nano/Aconfig$flag_declaration;-><init>()V

    aput-object v3, v4, v2

    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Landroid/internal/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    new-instance v3, Landroid/aconfig/nano/Aconfig$flag_declaration;

    invoke-direct {v3}, Landroid/aconfig/nano/Aconfig$flag_declaration;-><init>()V

    aput-object v3, v4, v2

    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Landroid/internal/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    goto :goto_3

    :sswitch_2
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->package_:Ljava/lang/String;

    goto :goto_3

    :sswitch_3
    return-object p0

    :cond_3
    :goto_3
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0xa -> :sswitch_2
        0x12 -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
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

    invoke-virtual {p0, p1}, Landroid/aconfig/nano/Aconfig$flag_declarations;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_declarations;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->package_:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->package_:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->flag:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILandroid/internal/framework/protobuf/nano/MessageNano;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->container:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declarations;->container:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    invoke-super {p0, p1}, Landroid/internal/framework/protobuf/nano/MessageNano;->writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
