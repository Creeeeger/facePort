.class public Lcom/samsung/android/sume/core/graph/MFGraph;
.super Lcom/samsung/android/sume/core/graph/GraphBase;
.source "MFGraph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/graph/MFGraph$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sume/core/graph/GraphBase<",
        "Lcom/samsung/android/sume/core/filter/MediaFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/graph/MFGraph;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/graph/MFGraph;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/graph/Graph$Option;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;>;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            "Lcom/samsung/android/sume/core/graph/Graph$Option;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p4}, Lcom/samsung/android/sume/core/graph/GraphBase;-><init>(Ljava/util/List;Lcom/samsung/android/sume/core/graph/Graph$Option;)V

    iput-object p2, p0, Lcom/samsung/android/sume/core/graph/MFGraph;->inputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    iput-object p3, p0, Lcom/samsung/android/sume/core/graph/MFGraph;->outputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/samsung/android/sume/core/graph/MFGraph;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare each node..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda6;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/sume/core/graph/MFGraph;Lcom/samsung/android/sume/core/channel/BufferChannel;Ljava/util/List;Lcom/samsung/android/sume/core/channel/BufferChannel;Ljava/util/List;Lcom/samsung/android/sume/core/graph/Graph$Option;)V

    invoke-interface {p1, v7}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v4, "no input node given"

    invoke-static {v0, v4, v2}, Lcom/samsung/android/sume/core/Def;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, v1}, Lcom/samsung/android/sume/core/Def;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/sume/core/graph/MFGraph;->TAG:Ljava/lang/String;

    const-string v1, "success to create MediaFilter graph"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/graph/Graph$Option;Lcom/samsung/android/sume/core/graph/MFGraph$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sume/core/graph/MFGraph;-><init>(Ljava/util/List;Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/graph/Graph$Option;)V

    return-void
.end method

.method static synthetic blacklist lambda$run$2(Lcom/samsung/android/sume/core/cache/DiskCache;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 8

    const-string v0, "cache-id"

    :try_start_0
    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sume/core/cache/KeyGenerator;->getSimpleKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/samsung/android/sume/core/cache/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "start-time-us"

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$run$4(Ljava/util/List;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    const-string v1, "contents-id"

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic blacklist lambda$run$5(Ljava/util/List;Ljava/util/List;I)V
    .locals 3

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    const-string v1, "exif"

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface;

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v2, v1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$new$0$com-samsung-android-sume-core-graph-MFGraph(Lcom/samsung/android/sume/core/channel/BufferChannel;Ljava/util/List;Lcom/samsung/android/sume/core/channel/BufferChannel;Ljava/util/List;Lcom/samsung/android/sume/core/graph/Graph$Option;Lcom/samsung/android/sume/core/graph/GraphNode;)V
    .locals 1

    invoke-interface {p6}, Lcom/samsung/android/sume/core/graph/GraphNode;->hasInputEdge()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sume/core/graph/GraphEdge;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/core/graph/GraphEdge;-><init>(Lcom/samsung/android/sume/core/channel/BufferChannel;)V

    invoke-interface {p6, v0}, Lcom/samsung/android/sume/core/graph/GraphNode;->addInputEdge(Lcom/samsung/android/sume/core/graph/GraphEdge;)Lcom/samsung/android/sume/core/graph/GraphNode;

    invoke-interface {p2, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {p6}, Lcom/samsung/android/sume/core/graph/GraphNode;->hasOutputEdge()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sume/core/graph/GraphEdge;

    invoke-direct {v0, p3}, Lcom/samsung/android/sume/core/graph/GraphEdge;-><init>(Lcom/samsung/android/sume/core/channel/BufferChannel;)V

    invoke-interface {p6, v0}, Lcom/samsung/android/sume/core/graph/GraphNode;->addOutputEdge(Lcom/samsung/android/sume/core/graph/GraphEdge;)Lcom/samsung/android/sume/core/graph/GraphNode;

    invoke-interface {p4, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {p6}, Lcom/samsung/android/sume/core/graph/GraphNode;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;->getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->isAllowPartialConnection()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/samsung/android/sume/core/graph/GraphEdge;

    invoke-direct {v0, p3}, Lcom/samsung/android/sume/core/graph/GraphEdge;-><init>(Lcom/samsung/android/sume/core/channel/BufferChannel;)V

    invoke-interface {p6, v0}, Lcom/samsung/android/sume/core/graph/GraphNode;->addOutputEdge(Lcom/samsung/android/sume/core/graph/GraphEdge;)Lcom/samsung/android/sume/core/graph/GraphNode;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraph;->messageChannelRouter:Lcom/samsung/android/sume/core/message/MessageChannelRouter;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->newMessagePublisher()Lcom/samsung/android/sume/core/message/MessagePublisher;

    move-result-object v0

    invoke-interface {p6, v0}, Lcom/samsung/android/sume/core/graph/GraphNode;->setMessagePublisher(Lcom/samsung/android/sume/core/message/MessagePublisher;)V

    invoke-interface {p6, p5}, Lcom/samsung/android/sume/core/graph/GraphNode;->prepare(Lcom/samsung/android/sume/core/graph/Graph$Option;)V

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraph;->messageChannelRouter:Lcom/samsung/android/sume/core/message/MessageChannelRouter;

    invoke-virtual {v0, p6}, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->addMessageSubscriber(Lcom/samsung/android/sume/core/message/MessageSubscriber;)V

    return-void
.end method

.method synthetic blacklist lambda$run$1$com-samsung-android-sume-core-graph-MFGraph(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraph;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/graph/Graph$Option;->getMaxDuration(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "end-time-us"

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic blacklist lambda$run$3$com-samsung-android-sume-core-graph-MFGraph(Ljava/util/List;Ljava/util/List;I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 5

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    new-instance v2, Lcom/samsung/android/sume/core/graph/MFGraph$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/samsung/android/sume/core/graph/MFGraph$2;-><init>(Lcom/samsung/android/sume/core/graph/MFGraph;Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-static {v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    const-string v3, "contents-id"

    invoke-interface {v0, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v3, "input-file"

    invoke-interface {v0, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v3, "output-file"

    invoke-interface {v1, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const/4 v3, 0x1

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setFlags([I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v2
.end method

.method public blacklist pause()V
    .locals 2

    sget-object v0, Lcom/samsung/android/sume/core/graph/MFGraph;->TAG:Ljava/lang/String;

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraph;->nodes:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist resume()V
    .locals 2

    sget-object v0, Lcom/samsung/android/sume/core/graph/MFGraph;->TAG:Ljava/lang/String;

    const-string v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraph;->nodes:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist run(Ljava/util/List;Ljava/util/List;)V
    .locals 5
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

    sget-object v0, Lcom/samsung/android/sume/core/graph/MFGraph;->TAG:Ljava/lang/String;

    const-string v1, "run E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraph;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/graph/Graph$Option;->getMaxDuration(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/graph/MFGraph;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraph;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;->isCacheable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraph;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/graph/Graph$Option;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/cache/DiskCache;

    new-instance v2, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/cache/DiskCache;)V

    invoke-interface {p1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Lcom/samsung/android/sume/core/graph/MFGraph;->messagePublisher:Lcom/samsung/android/sume/core/message/MessagePublisher;

    new-instance v3, Lcom/samsung/android/sume/core/graph/MFGraph$1;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/sume/core/graph/MFGraph$1;-><init>(Lcom/samsung/android/sume/core/graph/MFGraph;Lcom/samsung/android/sume/core/cache/DiskCache;)V

    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/samsung/android/sume/core/message/Event;->of(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Event;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sume/core/message/MessagePublisher;->sendMessage(Lcom/samsung/android/sume/core/message/Message;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraph;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;->isPackedIOBuffers()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v2, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/graph/MFGraph;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v2, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda4;

    invoke-direct {v3, p2}, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;)V

    invoke-static {v1, v3}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/MFGraph;->outBufferMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-interface {p2}, Ljava/util/List;->clear()V

    goto :goto_2

    :cond_4
    :goto_1
    nop

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraph;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;->isRunOneByOne()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sume/core/graph/MFGraph;->runOneByOne(Ljava/util/List;Ljava/util/List;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sume/core/graph/MFGraph;->runBatch(Ljava/util/List;Ljava/util/List;)V

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraph;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;->isRestoreMetadata()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v2, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/sume/core/graph/MFGraph$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    :cond_6
    sget-object v0, Lcom/samsung/android/sume/core/graph/MFGraph;->TAG:Ljava/lang/String;

    const-string v1, "run X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
