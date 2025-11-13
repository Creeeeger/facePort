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

.field protected final blacklist messageChannelRouter:Lcom/samsung/android/sume/core/message/MessageChannelRouter;

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

    const-class v0, Lcom/samsung/android/sume/core/graph/GraphBase;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/graph/GraphBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/List;Lcom/samsung/android/sume/core/graph/Graph$Option;)V
    .locals 2
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->outBufferMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/message/MessageChannelRouter;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->messageChannelRouter:Lcom/samsung/android/sume/core/message/MessageChannelRouter;

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->nodes:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    return-void
.end method

.method static synthetic blacklist lambda$publishEvent$2(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/lang/String;)Z
    .locals 1

    invoke-interface {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$publishEvent$3(Lcom/samsung/android/sume/core/message/Event;Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/lang/String;)V
    .locals 1

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/samsung/android/sume/core/format/MediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    return-void
.end method

.method static synthetic blacklist lambda$publishEvent$4(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "buffer-list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void
.end method

.method private blacklist onCanceled()V
    .locals 2

    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphBase;->TAG:Ljava/lang/String;

    const-string v1, "onCanceled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist onReceiveOutputBuffer(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 7

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->outBufferMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "contents-id"

    invoke-interface {p1, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    sget-object v2, Lcom/samsung/android/sume/core/types/MediaType;->SCALA:Lcom/samsung/android/sume/core/types/MediaType;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/samsung/android/sume/core/types/MediaType;->META:Lcom/samsung/android/sume/core/types/MediaType;

    if-eq v0, v2, :cond_2

    if-eqz v1, :cond_2

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

    invoke-static {}, Lcom/samsung/android/sume/solution/filter/UniImgp;->ofUnified()Lcom/samsung/android/sume/core/functional/Operator;

    move-result-object v2

    invoke-static {v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->mutableOf(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/sume/core/functional/Operator;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne v2, v3, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/util/Map;)V

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "file-descriptor"

    invoke-interface {v1, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v2, v4

    const-class v4, Landroid/graphics/Bitmap;

    invoke-interface {v1, v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5f

    invoke-virtual {v4, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_0
    goto :goto_3

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_2
    throw v3

    :cond_1
    :goto_3
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "freezed"

    invoke-interface {v1, v3, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    :cond_2
    return-object p1
.end method

.method private blacklist publishEvent(ILcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 10

    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publishEvent E: code="

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

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->messagePublisher:Lcom/samsung/android/sume/core/message/MessagePublisher;

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/samsung/android/sume/core/message/Event;->of(I)Lcom/samsung/android/sume/core/message/Event;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->messagePublisher:Lcom/samsung/android/sume/core/message/MessagePublisher;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/message/Event;->setPublisher(Lcom/samsung/android/sume/core/message/MessagePublisher;)Lcom/samsung/android/sume/core/message/Message;

    const-string v1, "contents-id"

    const-string v2, "input-file"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-interface {p2, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    invoke-interface {p2, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    :cond_0
    invoke-interface {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getCols()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    invoke-interface {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getRows()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "end-time-ms"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    const-string v1, "rotation-degrees"

    const-string v2, "last-video-timestamp-us"

    const-string v3, "last-audio-timestamp-us"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda0;

    invoke-direct {v4, p2}, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, p2}, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/message/Event;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/types/MediaType;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sume/core/message/Event;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/sume/core/message/Event;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x3e8

    if-lez v5, :cond_1

    div-long v8, v1, v8

    add-long/2addr v8, v6

    goto :goto_0

    :cond_1
    div-long v8, v3, v8

    add-long/2addr v8, v6

    :goto_0
    const-string v5, "duration"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/graph/Graph$Option;->isOutputOnEventCallback()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/samsung/android/sume/core/graph/GraphBase;->TAG:Ljava/lang/String;

    const-string v2, "set output buffer to event cb"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/message/Event;->setBundledDataHandler(Lcom/samsung/android/sume/core/message/Message$BundledDataHandler;)Lcom/samsung/android/sume/core/message/Message;

    goto :goto_1

    :pswitch_1
    invoke-interface {p2, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    invoke-interface {p2, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "start-time-ms"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    nop

    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/message/Event;->post()Lcom/samsung/android/sume/core/message/Message;

    sget-object v1, Lcom/samsung/android/sume/core/graph/GraphBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "publishEvent X: code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1fd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method synthetic blacklist lambda$runBatch$0$com-samsung-android-sume-core-graph-GraphBase(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->inputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    const/16 v0, 0x1fd

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sume/core/graph/GraphBase;->publishEvent(ILcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-void
.end method

.method synthetic blacklist lambda$runOneByOne$1$com-samsung-android-sume-core-graph-GraphBase(Ljava/util/List;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->inputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v0, p2}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    const/16 v0, 0x1fd

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/sume/core/graph/GraphBase;->publishEvent(ILcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->outputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->receive()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/graph/GraphBase;->onReceiveOutputBuffer(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/graph/Graph$Option;->isOutputOnEventCallback()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/16 v1, 0x1fe

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sume/core/graph/GraphBase;->publishEvent(ILcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-void
.end method

.method public blacklist release()V
    .locals 2

    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphBase;->TAG:Ljava/lang/String;

    const-string v1, "release...E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->inputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->outputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->nodes:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;->clear()V

    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphBase;->TAG:Ljava/lang/String;

    const-string v1, "release...X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist runBatch(Ljava/util/List;Ljava/util/List;)V
    .locals 3
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

    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runBatch: # of inputs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sume/core/graph/GraphBase;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphBase;->TAG:Ljava/lang/String;

    const-string v2, "wait to receive output..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->outputChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->receive()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/graph/GraphBase;->onReceiveOutputBuffer(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/graph/Graph$Option;->isOutputOnEventCallback()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/16 v2, 0x1fe

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/sume/core/graph/GraphBase;->publishEvent(ILcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/samsung/android/sume/core/graph/GraphBase;->onCanceled()V

    :goto_1
    return-void
.end method

.method protected blacklist runOneByOne(Ljava/util/List;Ljava/util/List;)V
    .locals 3
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

    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runOneByOne: # of inputs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/sume/core/graph/GraphBase$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/sume/core/graph/GraphBase;Ljava/util/List;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/samsung/android/sume/core/graph/GraphBase;->onCanceled()V

    :goto_0
    return-void
.end method

.method public blacklist setMessageSubscriber(Lcom/samsung/android/sume/core/message/MessageSubscriber;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/sume/core/graph/GraphBase;->TAG:Ljava/lang/String;

    const-string v1, "setMessageSubscriber"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->messageChannelRouter:Lcom/samsung/android/sume/core/message/MessageChannelRouter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->addMessageSubscriber(Lcom/samsung/android/sume/core/message/MessageSubscriber;)V

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->messageChannelRouter:Lcom/samsung/android/sume/core/message/MessageChannelRouter;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->newMessagePublisher()Lcom/samsung/android/sume/core/message/MessagePublisher;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBase;->messagePublisher:Lcom/samsung/android/sume/core/message/MessagePublisher;

    return-void
.end method
