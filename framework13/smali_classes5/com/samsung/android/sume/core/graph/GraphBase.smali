.class public abstract Lcom/samsung/android/sume/core/graph/GraphBase;
.super Ljava/lang/Object;
.source "GraphBase.java"

# interfaces
.implements Lcom/samsung/android/sume/core/graph/Graph;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sume/core/graph/Graph<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected blacklist inputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

.field private final blacklist messageChannelRouter:Lcom/samsung/android/sume/core/message/MessageChannelRouter;

.field protected blacklist messagePublisher:Lcom/samsung/android/sume/core/message/MessagePublisher;

.field protected final blacklist nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field protected final blacklist option:Lcom/samsung/android/sume/core/graph/Graph$Option;

.field protected final blacklist outBufferMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist outputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/samsung/android/sume/core/graph/GraphBase;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/graph/GraphBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/List;Lcom/samsung/android/sume/core/graph/Graph$Option;)V
    .locals 1
    .param p2, "option"    # Lcom/samsung/android/sume/core/graph/Graph$Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodes",
            "option"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "TT;>;>;",
            "Lcom/samsung/android/sume/core/graph/Graph$Option;",
            ")V"
        }
    .end annotation

    .line 32
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphBase;, "Lcom/samsung/android/sume/core/graph/GraphBase<TT;>;"
    .local p1, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/graph/GraphNode<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->outBufferMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    new-instance v0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/message/MessageChannelRouter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->messageChannelRouter:Lcom/samsung/android/sume/core/message/MessageChannelRouter;

    .line 35
    new-instance v0, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/graph/GraphBase;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 39
    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->nodes:Ljava/util/List;

    .line 40
    iput-object p2, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    .line 41
    return-void
.end method

.method private blacklist onCanceled()V
    .locals 2

    .line 136
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphBase;, "Lcom/samsung/android/sume/core/graph/GraphBase<TT;>;"
    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphBase;->TAG:Ljava/lang/String;

    const-string v1, "onCanceled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method private blacklist onReceiveOutputBuffer(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 5
    .param p1, "mediaBuffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaBuffer"
        }
    .end annotation

    .line 44
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphBase;, "Lcom/samsung/android/sume/core/graph/GraphBase<TT;>;"
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    .line 45
    .local v0, "outMediaType":Lcom/samsung/android/sume/core/types/MediaType;
    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->outBufferMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "contents-id"

    invoke-interface {p1, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 48
    .local v1, "storedOutput":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    sget-object v2, Lcom/samsung/android/sume/core/types/MediaType;->SCALA:Lcom/samsung/android/sume/core/types/MediaType;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/samsung/android/sume/core/types/MediaType;->META:Lcom/samsung/android/sume/core/types/MediaType;

    if-eq v0, v2, :cond_0

    if-eqz v1, :cond_0

    .line 49
    sget-object v2, Lcom/samsung/android/sume/core/graph/GraphBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceiveOutputBuffer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {}, Lcom/samsung/android/sume/core/controller/UniImgp;->ofUnified()Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v2

    invoke-interface {v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sume/core/format/ImageFormat;

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/sume/core/functional/ImgProcessor;->process(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/ImageFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    .line 53
    .local v2, "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "freezed"

    invoke-interface {v2, v4, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    return-object v2

    .line 59
    .end local v2    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_0
    return-object p1
.end method


# virtual methods
.method synthetic blacklist lambda$new$0$com-samsung-android-sume-core-graph-GraphBase(Lcom/samsung/android/sume/core/graph/GraphNode;)V
    .locals 1
    .param p1, "node"    # Lcom/samsung/android/sume/core/graph/GraphNode;

    .line 36
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphBase;, "Lcom/samsung/android/sume/core/graph/GraphBase<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->messageChannelRouter:Lcom/samsung/android/sume/core/message/MessageChannelRouter;

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/graph/GraphNode;->bindToMessageChannelRouter(Lcom/samsung/android/sume/core/message/MessageChannelRouter;)V

    .line 37
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->messageChannelRouter:Lcom/samsung/android/sume/core/message/MessageChannelRouter;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->newMessagePublisher()Lcom/samsung/android/sume/core/message/MessagePublisher;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/graph/GraphNode;->setMessagePublisher(Lcom/samsung/android/sume/core/message/MessagePublisher;)V

    .line 38
    return-void
.end method

.method synthetic blacklist lambda$runOneByOne$1$com-samsung-android-sume-core-graph-GraphBase(Ljava/util/List;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 18
    .param p1, "outBuffers"    # Ljava/util/List;
    .param p2, "e"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 96
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphBase;, "Lcom/samsung/android/sume/core/graph/GraphBase<TT;>;"
    move-object/from16 v7, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 98
    .local v8, "beginTs":J
    iget-object v0, v7, Lcom/samsung/android/sume/core/graph/GraphBase;->inputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    move-object/from16 v10, p2

    invoke-interface {v0, v10}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    .line 100
    iget-object v0, v7, Lcom/samsung/android/sume/core/graph/GraphBase;->outputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->receive()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 101
    .local v11, "obuf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-direct {v7, v11}, Lcom/samsung/android/sume/core/graph/GraphBase;->onReceiveOutputBuffer(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    move-object/from16 v12, p1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 105
    .local v13, "endTs":J
    iget-object v15, v7, Lcom/samsung/android/sume/core/graph/GraphBase;->messagePublisher:Lcom/samsung/android/sume/core/message/MessagePublisher;

    if-eqz v15, :cond_0

    .line 106
    const/16 v5, 0x1f8

    new-instance v6, Lcom/samsung/android/sume/core/graph/GraphBase$2;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v11

    move-wide v3, v8

    move v7, v5

    move-wide/from16 v16, v8

    move-object v8, v6

    .end local v8    # "beginTs":J
    .local v16, "beginTs":J
    move-wide v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sume/core/graph/GraphBase$2;-><init>(Lcom/samsung/android/sume/core/graph/GraphBase;Lcom/samsung/android/sume/core/buffer/MediaBuffer;JJ)V

    invoke-static {v7, v8}, Lcom/samsung/android/sume/core/message/Event;->of(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Event;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/samsung/android/sume/core/message/MessagePublisher;->sendMessage(Lcom/samsung/android/sume/core/message/Message;)V

    goto :goto_0

    .line 105
    .end local v16    # "beginTs":J
    .restart local v8    # "beginTs":J
    :cond_0
    move-wide/from16 v16, v8

    .line 129
    .end local v8    # "beginTs":J
    .restart local v16    # "beginTs":J
    :goto_0
    return-void
.end method

.method public blacklist release()V
    .locals 3

    .line 149
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphBase;, "Lcom/samsung/android/sume/core/graph/GraphBase<TT;>;"
    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release...E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->inputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/channel/BufferChannel;->cancel()V

    .line 151
    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->outputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/channel/BufferChannel;->cancel()V

    .line 153
    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->nodes:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 155
    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/graph/Graph$Option;->clear()V

    .line 156
    const-string/jumbo v1, "release...X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method protected blacklist runBatch(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inBuffers",
            "outBuffers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphBase;, "Lcom/samsung/android/sume/core/graph/GraphBase<TT;>;"
    .local p1, "inBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    .local p2, "outBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "runBatch: # of inputs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->inputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/sume/core/channel/BufferChannel;)V

    invoke-interface {p1, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 70
    :goto_0
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 71
    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "wait to receive output..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->outputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->receive()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 73
    .local v0, "obuf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/graph/GraphBase;->onReceiveOutputBuffer(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->messagePublisher:Lcom/samsung/android/sume/core/message/MessagePublisher;

    if-eqz v1, :cond_0

    .line 76
    const/16 v2, 0x1f8

    new-instance v3, Lcom/samsung/android/sume/core/graph/GraphBase$1;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/sume/core/graph/GraphBase$1;-><init>(Lcom/samsung/android/sume/core/graph/GraphBase;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-static {v2, v3}, Lcom/samsung/android/sume/core/message/Event;->of(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Event;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/core/message/MessagePublisher;->sendMessage(Lcom/samsung/android/sume/core/message/Message;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v0    # "obuf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_0
    goto :goto_0

    .line 88
    :cond_1
    goto :goto_1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    invoke-direct {p0}, Lcom/samsung/android/sume/core/graph/GraphBase;->onCanceled()V

    .line 89
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :goto_1
    return-void
.end method

.method protected blacklist runOneByOne(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inBuffers",
            "outBuffers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)V"
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphBase;, "Lcom/samsung/android/sume/core/graph/GraphBase<TT;>;"
    .local p1, "inBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    .local p2, "outBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "runOneByOne: # of inputs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :try_start_0
    new-instance v0, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/graph/GraphBase;Ljava/util/List;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    invoke-direct {p0}, Lcom/samsung/android/sume/core/graph/GraphBase;->onCanceled()V

    .line 133
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :goto_0
    return-void
.end method

.method public blacklist setMessageSubscriber(Lcom/samsung/android/sume/core/message/MessageSubscriber;)V
    .locals 2
    .param p1, "messageSubscriber"    # Lcom/samsung/android/sume/core/message/MessageSubscriber;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageSubscriber"
        }
    .end annotation

    .line 142
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphBase;, "Lcom/samsung/android/sume/core/graph/GraphBase<TT;>;"
    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMessageSubscriber"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->messageChannelRouter:Lcom/samsung/android/sume/core/message/MessageChannelRouter;

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/message/MessageSubscriber;->bindToMessageChannelRouter(Lcom/samsung/android/sume/core/message/MessageChannelRouter;)V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->messageChannelRouter:Lcom/samsung/android/sume/core/message/MessageChannelRouter;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->newMessagePublisher()Lcom/samsung/android/sume/core/message/MessagePublisher;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->messagePublisher:Lcom/samsung/android/sume/core/message/MessagePublisher;

    .line 145
    return-void
.end method
