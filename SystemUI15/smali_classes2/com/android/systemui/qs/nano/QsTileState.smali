.class public final Lcom/android/systemui/qs/nano/QsTileState;
.super Lcom/google/protobuf/nano/MessageNano;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static volatile _emptyArray:[Lcom/android/systemui/qs/nano/QsTileState;


# instance fields
.field private identifierCase_:I

.field private identifier_:Ljava/lang/Object;

.field private optionalBooleanStateCase_:I

.field private optionalBooleanState_:Ljava/lang/Object;

.field private optionalLabelCase_:I

.field private optionalLabel_:Ljava/lang/Object;

.field private optionalSecondaryLabelCase_:I

.field private optionalSecondaryLabel_:Ljava/lang/Object;

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifierCase_:I

    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalBooleanStateCase_:I

    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalLabelCase_:I

    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalSecondaryLabelCase_:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/nano/QsTileState;->clear()Lcom/android/systemui/qs/nano/QsTileState;

    return-void
.end method

.method public static emptyArray()[Lcom/android/systemui/qs/nano/QsTileState;
    .locals 2

    sget-object v0, Lcom/android/systemui/qs/nano/QsTileState;->_emptyArray:[Lcom/android/systemui/qs/nano/QsTileState;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/qs/nano/QsTileState;->_emptyArray:[Lcom/android/systemui/qs/nano/QsTileState;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/systemui/qs/nano/QsTileState;

    sput-object v1, Lcom/android/systemui/qs/nano/QsTileState;->_emptyArray:[Lcom/android/systemui/qs/nano/QsTileState;

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
    sget-object v0, Lcom/android/systemui/qs/nano/QsTileState;->_emptyArray:[Lcom/android/systemui/qs/nano/QsTileState;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/systemui/qs/nano/QsTileState;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->state:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/nano/QsTileState;->clearIdentifier()Lcom/android/systemui/qs/nano/QsTileState;

    invoke-virtual {p0}, Lcom/android/systemui/qs/nano/QsTileState;->clearOptionalBooleanState()Lcom/android/systemui/qs/nano/QsTileState;

    invoke-virtual {p0}, Lcom/android/systemui/qs/nano/QsTileState;->clearOptionalLabel()Lcom/android/systemui/qs/nano/QsTileState;

    invoke-virtual {p0}, Lcom/android/systemui/qs/nano/QsTileState;->clearOptionalSecondaryLabel()Lcom/android/systemui/qs/nano/QsTileState;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public clearIdentifier()Lcom/android/systemui/qs/nano/QsTileState;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifierCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifier_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearOptionalBooleanState()Lcom/android/systemui/qs/nano/QsTileState;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalBooleanStateCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalBooleanState_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearOptionalLabel()Lcom/android/systemui/qs/nano/QsTileState;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalLabelCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalLabel_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearOptionalSecondaryLabel()Lcom/android/systemui/qs/nano/QsTileState;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalSecondaryLabelCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalSecondaryLabel_:Ljava/lang/Object;

    return-object p0
.end method

.method public computeSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifier_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifierCase_:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifier_:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget v2, p0, Lcom/android/systemui/qs/nano/QsTileState;->state:I

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget v2, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalBooleanStateCase_:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalBooleanState_:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalLabelCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalLabel_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalSecondaryLabelCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    iget-object p0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalSecondaryLabel_:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v2, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_5
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/qs/nano/QsTileState;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_a

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-eq v0, v1, :cond_9

    const/16 v1, 0x12

    const/4 v3, 0x2

    if-eq v0, v1, :cond_7

    const/16 v1, 0x18

    if-eq v0, v1, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalSecondaryLabel_:Ljava/lang/Object;

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalSecondaryLabelCase_:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalLabel_:Ljava/lang/Object;

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalLabelCase_:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalBooleanState_:Ljava/lang/Object;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalBooleanStateCase_:I

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_6

    if-eq v0, v3, :cond_6

    goto :goto_0

    :cond_6
    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->state:I

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifierCase_:I

    if-eq v0, v3, :cond_8

    new-instance v0, Lcom/android/systemui/util/nano/ComponentNameProto;

    invoke-direct {v0}, Lcom/android/systemui/util/nano/ComponentNameProto;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifier_:Ljava/lang/Object;

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifier_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput v3, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifierCase_:I

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifier_:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifierCase_:I

    goto :goto_0

    :cond_a
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/nano/QsTileState;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/qs/nano/QsTileState;

    move-result-object p0

    return-object p0
.end method

.method public setBooleanState(Z)Lcom/android/systemui/qs/nano/QsTileState;
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalBooleanStateCase_:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalBooleanState_:Ljava/lang/Object;

    return-object p0
.end method

.method public setComponentName(Lcom/android/systemui/util/nano/ComponentNameProto;)Lcom/android/systemui/qs/nano/QsTileState;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifierCase_:I

    iput-object p1, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifier_:Ljava/lang/Object;

    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/android/systemui/qs/nano/QsTileState;
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalLabelCase_:I

    iput-object p1, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalLabel_:Ljava/lang/Object;

    return-object p0
.end method

.method public setSecondaryLabel(Ljava/lang/String;)Lcom/android/systemui/qs/nano/QsTileState;
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalSecondaryLabelCase_:I

    iput-object p1, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalSecondaryLabel_:Ljava/lang/Object;

    return-object p0
.end method

.method public setSpec(Ljava/lang/String;)Lcom/android/systemui/qs/nano/QsTileState;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifierCase_:I

    iput-object p1, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifier_:Ljava/lang/Object;

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifier_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifier_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->state:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalBooleanStateCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalBooleanState_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    :cond_3
    iget v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalLabelCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalLabel_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_4
    iget v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalSecondaryLabelCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    iget-object p0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalSecondaryLabel_:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    return-void
.end method
