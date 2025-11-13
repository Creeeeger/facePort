.class public final Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;
.super Lcom/google/protobuf/nano/MessageNano;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static volatile _emptyArray:[Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;


# instance fields
.field public componentName:Ljava/lang/String;

.field public rank:I

.field public widgetId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;->clear()Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;

    return-void
.end method

.method public static emptyArray()[Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;
    .locals 2

    sget-object v0, Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;->_emptyArray:[Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;->_emptyArray:[Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;

    sput-object v1, Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;->_emptyArray:[Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;

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
    sget-object v0, Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;->_emptyArray:[Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;->widgetId:I

    const-string v1, ""

    iput-object v1, p0, Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;->componentName:Ljava/lang/String;

    iput v0, p0, Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;->rank:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public computeSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;->widgetId:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;->componentName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;->componentName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget p0, p0, Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;->rank:I

    if-eqz p0, :cond_2

    const/4 v1, 0x3

    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;
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

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;->rank:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;->componentName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;->widgetId:I

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;

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

    iget v0, p0, Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;->widgetId:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;->componentName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;->componentName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget p0, p0, Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;->rank:I

    if-eqz p0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    return-void
.end method
