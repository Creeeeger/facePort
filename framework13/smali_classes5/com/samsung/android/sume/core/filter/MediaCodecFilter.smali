.class public abstract Lcom/samsung/android/sume/core/filter/MediaCodecFilter;
.super Ljava/lang/Object;
.source "MediaCodecFilter.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/MediaInputStreamFilter;
.implements Lcom/samsung/android/sume/core/filter/MediaOutputStreamFilter;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected final blacklist codecDescriptor:Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

.field protected blacklist codecTag:Ljava/lang/String;

.field private final blacklist condition:Ljava/util/concurrent/locks/Condition;

.field protected blacklist contentId:I

.field protected final blacklist cvPause:Landroid/os/ConditionVariable;

.field protected blacklist endTimeUs:Ljava/util/concurrent/atomic/AtomicLong;

.field protected blacklist lastTimestampUs:Ljava/util/concurrent/atomic/AtomicLong;

.field private final blacklist lock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected blacklist mediaCodec:Landroid/media/MediaCodec;

.field protected blacklist messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

.field protected blacklist numWholeFrames:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected blacklist processedFrames:I

.field protected blacklist reachedInputEos:Z

.field protected blacklist reachedOutputEos:Z

.field protected blacklist receiveChannelCount:I

.field protected blacklist receiveChannelQuery:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist sendChannelCount:I

.field protected blacklist sendChannelQuery:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist startTimeUs:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;)V
    .locals 3
    .param p1, "codecDescriptor"    # Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codecDescriptor"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->codecTag:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->processedFrames:I

    .line 41
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->numWholeFrames:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->startTimeUs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->endTimeUs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->lastTimestampUs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 49
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 50
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->condition:Ljava/util/concurrent/locks/Condition;

    .line 51
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->cvPause:Landroid/os/ConditionVariable;

    .line 54
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->codecDescriptor:Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    .line 55
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 56
    return-void
.end method


# virtual methods
.method protected blacklist awaitCodecToReady()V
    .locals 4

    .line 65
    const-string v0, "awaitCodecToReady...X: "

    sget-object v1, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "awaitCodecToReady...E: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    goto :goto_1

    .line 72
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .end local v1    # "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 73
    sget-object v1, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    .line 75
    :goto_1
    return-void

    .line 72
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 73
    sget-object v2, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    throw v1
.end method

.method protected abstract blacklist configCodec(Lcom/samsung/android/sume/core/message/Message;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configData"
        }
    .end annotation
.end method

.method public blacklist getConsumeMessage()[I
    .locals 1

    .line 90
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x5
    .end array-data
.end method

.method public blacklist getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->codecDescriptor:Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    return-object v0
.end method

.method public blacklist getMediaCodec()Landroid/media/MediaCodec;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->mediaCodec:Landroid/media/MediaCodec;

    return-object v0
.end method

.method public blacklist getReceiveChannelCount()I
    .locals 1

    .line 205
    iget v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->receiveChannelCount:I

    return v0
.end method

.method public blacklist getReceiveChannelQuery()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->receiveChannelQuery:Ljava/util/function/Function;

    return-object v0
.end method

.method public blacklist getSendChannelCount()I
    .locals 1

    .line 221
    iget v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->sendChannelCount:I

    return v0
.end method

.method public blacklist getSendChannelQuery()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->sendChannelQuery:Ljava/util/function/Function;

    return-object v0
.end method

.method public blacklist onMessageReceived(Lcom/samsung/android/sume/core/message/Message;)Z
    .locals 7
    .param p1, "message"    # Lcom/samsung/android/sume/core/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x1

    .line 98
    .local v0, "consumed":Z
    sget-object v1, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMessageReceived: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Message;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v2, "replyData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Message;->getCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 135
    :pswitch_0
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 130
    :pswitch_1
    const-string v3, "last-timestampUs"

    invoke-virtual {p1, v3}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 131
    .local v3, "timestampUs":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "last timestampUs set as "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->lastTimestampUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 133
    goto/16 :goto_1

    .line 119
    .end local v3    # "timestampUs":J
    :pswitch_2
    const-string/jumbo v1, "whole-frames"

    invoke-virtual {p1, v1}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 120
    .local v1, "numFrames":I
    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->numWholeFrames:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 121
    const-string/jumbo v3, "start-time-us"

    invoke-virtual {p1, v3}, Lcom/samsung/android/sume/core/message/Message;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->startTimeUs:Ljava/util/concurrent/atomic/AtomicLong;

    const-string/jumbo v4, "start-time-us"

    invoke-virtual {p1, v4}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 124
    :cond_0
    const-string v3, "end-time-us"

    invoke-virtual {p1, v3}, Lcom/samsung/android/sume/core/message/Message;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 125
    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->endTimeUs:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v4, "end-time-us"

    invoke-virtual {p1, v4}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/16 :goto_1

    .line 102
    .end local v1    # "numFrames":I
    :pswitch_3
    monitor-enter p1

    .line 103
    :try_start_0
    const-string v3, "contents-id"

    invoke-virtual {p1, v3}, Lcom/samsung/android/sume/core/message/Message;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    const-string v3, "contents-id"

    invoke-virtual {p1, v3}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->contentId:I

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    .line 108
    .local v3, "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    const-string v4, "media-type"

    invoke-virtual {p1, v4}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sume/core/types/MediaType;

    .line 109
    .local v4, "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    invoke-virtual {v4}, Lcom/samsung/android/sume/core/types/MediaType;->isAudio()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sume/core/types/MediaType;->isAudio()Z

    move-result v5

    if-nez v5, :cond_3

    .line 110
    :cond_2
    invoke-virtual {v4}, Lcom/samsung/android/sume/core/types/MediaType;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sume/core/types/MediaType;->isVideo()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->configCodec(Lcom/samsung/android/sume/core/message/Message;)V

    .line 116
    .end local v3    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .end local v4    # "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    monitor-exit p1

    .line 117
    goto :goto_1

    .line 111
    .restart local v3    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .restart local v4    # "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    :cond_4
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "config-data of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not match this codec type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v1, 0x0

    monitor-exit p1

    return v1

    .line 116
    .end local v3    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .end local v4    # "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 139
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Message;->isRequestToReply()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 140
    invoke-virtual {p1, v2}, Lcom/samsung/android/sume/core/message/Message;->reply(Ljava/util/Map;)V

    .line 142
    :cond_6
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist pause()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->cvPause:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 171
    return-void
.end method

.method public blacklist release()V
    .locals 4

    .line 152
    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release...E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 155
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    nop

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 160
    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->mediaCodec:Landroid/media/MediaCodec;

    .line 161
    goto :goto_2

    .line 159
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    sget-object v2, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->TAG:Ljava/lang/String;

    const-string v3, "codec stop called but not started yet"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    nop

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    goto :goto_0

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 160
    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->mediaCodec:Landroid/media/MediaCodec;

    .line 161
    throw v0

    .line 164
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->signalCodecFromReady()V

    .line 165
    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release...X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method public blacklist resume()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->cvPause:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 176
    return-void
.end method

.method public blacklist setMessageProducer(Lcom/samsung/android/sume/core/message/MessageProducer;)V
    .locals 0
    .param p1, "messageProducer"    # Lcom/samsung/android/sume/core/message/MessageProducer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageProducer"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

    .line 148
    return-void
.end method

.method public blacklist setReceiveChannelQuery(Ljava/util/function/Function;I)V
    .locals 0
    .param p2, "numChannels"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "receiveChannelQuery",
            "numChannels"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;I)V"
        }
    .end annotation

    .line 194
    .local p1, "receiveChannelQuery":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Enum<*>;Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->receiveChannelQuery:Ljava/util/function/Function;

    .line 195
    iput p2, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->receiveChannelCount:I

    .line 196
    return-void
.end method

.method public blacklist setSendChannelQuery(Ljava/util/function/Function;I)V
    .locals 0
    .param p2, "numChannels"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sendChannelQuery",
            "numChannels"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;I)V"
        }
    .end annotation

    .line 210
    .local p1, "sendChannelQuery":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Enum<*>;Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->sendChannelQuery:Ljava/util/function/Function;

    .line 211
    iput p2, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->sendChannelCount:I

    .line 212
    return-void
.end method

.method protected blacklist signalCodecFromReady()V
    .locals 4

    .line 78
    const-string/jumbo v0, "signalCodecFromReady...X: "

    sget-object v1, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "signalCodecFromReady...E: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 81
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    nop

    .line 86
    return-void

    .line 83
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 84
    sget-object v2, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    throw v1
.end method

.method public blacklist stream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation

    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method protected varargs blacklist tagged(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fmt",
            "args"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;->codecTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
