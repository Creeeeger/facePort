.class public Lcom/samsung/android/sume/core/filter/MediaFilterTracer;
.super Lcom/samsung/android/sume/core/filter/DecorateFilter;
.source "MediaFilterTracer.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist contentId:I

.field private blacklist instantRun:Z

.field private final blacklist messageHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/message/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

.field private blacklist numBlocks:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/message/MessageProducer;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/DecorateFilter;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->instantRun:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->contentId:I

    iput v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->numBlocks:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->messageHandlers:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/message/MessageProducer;Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/message/MessageProducer;)V

    instance-of v0, p3, Lcom/samsung/android/sume/core/filter/InstantFilter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->instantRun:Z

    :cond_0
    return-void
.end method

.method private blacklist getShortDescription(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/descriptor/MFDescriptor;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShortDescription: descriptor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    instance-of v1, p1, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    const-string v2, "type"

    const-string v3, "NNFWDescriptor"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getNNDescriptor()Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getModelId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "model"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "fw"

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getFw()Lcom/samsung/android/sume/core/types/nn/NNFW;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "hw"

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getHw()Lcom/samsung/android/sume/core/types/HwUnit;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getInputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v2

    const-string v3, "input-data-type"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getInputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v2

    const-string v3, "input-color-format"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getInputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v2

    const-string v3, "input-shape"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getOutputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v2

    const-string v3, "output-data-type"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getOutputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v2

    const-string v3, "output-color-format"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getOutputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v2

    const-string v3, "output-shape"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method static synthetic blacklist lambda$makeReport$1(Lcom/samsung/android/sume/core/message/Message;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$makeReport$2(Lcom/samsung/android/sume/core/message/Message;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist makeReport(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->makeReport(ILcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-void
.end method

.method private blacklist makeReport(ILcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 7

    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeReport: code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", buffer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

    invoke-interface {v2, p1}, Lcom/samsung/android/sume/core/message/MessageProducer;->newMessage(I)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "unit-id"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    if-eqz p2, :cond_1

    iget v3, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->contentId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "contents-id"

    invoke-interface {p2, v4, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "block-id"

    invoke-interface {p2, v6, v5}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v4, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    iget v4, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->numBlocks:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "num-blocks"

    invoke-interface {p2, v6, v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    :cond_0
    const-string v4, "input-file"

    invoke-interface {p2, v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p2, v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    :cond_1
    const-string v3, "end-time-ms"

    const-string v4, "start-time-ms"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v4, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->instantRun:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->messageHandlers:Ljava/util/List;

    new-instance v5, Lcom/samsung/android/sume/core/filter/MediaFilterTracer$$ExternalSyntheticLambda2;

    invoke-direct {v5, v2}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/message/Message;)V

    invoke-interface {v4, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    goto :goto_0

    :pswitch_1
    iget-boolean v3, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->instantRun:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->messageHandlers:Ljava/util/List;

    new-instance v5, Lcom/samsung/android/sume/core/filter/MediaFilterTracer$$ExternalSyntheticLambda1;

    invoke-direct {v5, v2}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/message/Message;)V

    invoke-interface {v3, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    iget-boolean v3, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->instantRun:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->messageHandlers:Ljava/util/List;

    new-instance v4, Lcom/samsung/android/sume/core/filter/MediaFilterTracer$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilterTracer;Lcom/samsung/android/sume/core/message/Message;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    goto :goto_0

    :pswitch_5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->getShortDescription(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "unit-description"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    :cond_4
    :goto_0
    invoke-virtual {v2}, Lcom/samsung/android/sume/core/message/Message;->post()Lcom/samsung/android/sume/core/message/Message;

    return-void

    :pswitch_data_0
    .packed-switch 0x1ff
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist getConsumeMessage()[I
    .locals 1

    const/4 v0, 0x7

    filled-new-array {v0}, [I

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$makeReport$0$com-samsung-android-sume-core-filter-MediaFilterTracer(Lcom/samsung/android/sume/core/message/Message;Lcom/samsung/android/sume/core/message/Message;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->contentId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "contents-id"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    return-void
.end method

.method public blacklist onMessageReceived(Lcom/samsung/android/sume/core/message/Message;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Message;->getCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "contents-id"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->contentId:I

    const-string v0, "whole-frames"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->numBlocks:I

    nop

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist prepare()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare: successor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1ff

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->makeReport(I)V

    invoke-super {p0}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->prepare()V

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->makeReport(I)V

    return-void
.end method

.method public blacklist release()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release: successor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x203

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->makeReport(I)V

    invoke-super {p0}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->release()V

    const/16 v0, 0x204

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->makeReport(I)V

    return-void
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 3

    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run: successor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x201

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->makeReport(ILcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object p2

    const/16 v0, 0x202

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/sume/core/filter/MediaFilterTracer;->makeReport(ILcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-object p2
.end method
