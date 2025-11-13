.class public Lcom/samsung/android/sume/core/filter/MediaParserFilter;
.super Ljava/lang/Object;
.source "MediaParserFilter.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/MediaFilter;
.implements Lcom/samsung/android/sume/core/filter/MediaOutputStreamFilter;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist bitrate:I

.field private final blacklist cvPause:Landroid/os/ConditionVariable;

.field private final blacklist descriptor:Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;

.field private blacklist messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

.field private blacklist sendChannelCount:I

.field private blacklist sendChannelQuery:Ljava/util/function/Function;
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


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->cvPause:Landroid/os/ConditionVariable;

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->cvPause:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/samsung/android/sume/core/filter/MediaParserFilter;)Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;

    return-object v0
.end method

.method static synthetic blacklist lambda$run$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic blacklist lambda$run$1(Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Ljava/lang/Object;
    .locals 1

    const-string v0, "file-descriptor"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$run$2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;

    return-object v0
.end method

.method public blacklist getSendChannelCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->sendChannelCount:I

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

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->sendChannelQuery:Ljava/util/function/Function;

    return-object v0
.end method

.method synthetic blacklist lambda$run$3$com-samsung-android-sume-core-filter-MediaParserFilter(Landroid/media/MediaExtractor;Ljava/io/FileDescriptor;ILjava/util/List;I)V
    .locals 10

    invoke-virtual {p1, p5}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;

    invoke-virtual {v3, v2}, Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;->needToParse(Lcom/samsung/android/sume/core/types/MediaType;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v1, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "descriptor has type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p5}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    sget-object v4, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "media-format = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "media-format"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "media-type"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne v2, v4, :cond_2

    const-string v4, "video-format"

    goto :goto_1

    :cond_2
    const-string v4, "audio-format"

    :goto_1
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "width"

    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v4, "height"

    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v4, "rotation-degrees"

    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v4, "bitrate"

    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    iget v5, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->bitrate:I

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->bitrate:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    const-string v5, "durationUs"

    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {p2}, Lcom/samsung/android/sume/core/Def;->getFileSize(Ljava/io/FileDescriptor;)J

    move-result-wide v6

    const/4 v8, 0x3

    shl-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    mul-long/2addr v6, v8

    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    div-long/2addr v6, v8

    long-to-int v5, v6

    iput v5, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->bitrate:I

    iget v5, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->bitrate:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_2
    const-string v4, "frame-rate"

    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v4, "i-frame-interval"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "sample-rate"

    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string v4, "channel-count"

    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    sget-object v4, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->TAG:Ljava/lang/String;

    const-string v6, "send TRACK_FORMAT message to decoder"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "contents-id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

    invoke-interface {v4, v5, v3}, Lcom/samsung/android/sume/core/message/MessageProducer;->newMessage(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sume/core/message/Message;->post()Lcom/samsung/android/sume/core/message/Message;

    new-instance v4, Landroid/util/Pair;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic blacklist lambda$run$4$com-samsung-android-sume-core-filter-MediaParserFilter(Landroid/media/MediaExtractor;JI)V
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p4

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v4, "mime"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "video"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    :goto_0
    move-object v5, v0

    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;

    invoke-virtual {v0, v5}, Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;->needToParse(Lcom/samsung/android/sume/core/types/MediaType;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "descriptor has type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->sendChannelQuery:Ljava/util/function/Function;

    invoke-interface {v0, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/channel/BufferChannel;

    if-nez v0, :cond_2

    sget-object v6, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no buffer-channel given for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", skip decoding this track"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[track: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_6

    iget-object v8, v1, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->cvPause:Landroid/os/ConditionVariable;

    invoke-virtual {v8}, Landroid/os/ConditionVariable;->block()V

    instance-of v8, v0, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    move-object v8, v0

    check-cast v8, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;

    invoke-virtual {v8}, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->get()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v8

    goto :goto_2

    :cond_3
    new-array v8, v9, [Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-static {v8}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf([Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v8

    :goto_2
    const-class v10, Ljava/nio/ByteBuffer;

    invoke-interface {v8, v10}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v10, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, "chunk-size"

    if-ltz v9, :cond_5

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    cmp-long v12, p2, v12

    if-gez v12, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v11, "timestampUs"

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_4

    :cond_5
    :goto_3
    sget-object v12, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "parser reached EOS"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4
    invoke-interface {v0, v8}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->unselectTrack(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_5
    return-void
.end method

.method public blacklist pause()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->cvPause:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    return-void
.end method

.method public blacklist resume()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->cvPause:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 21

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    move-object v14, v0

    :try_start_0
    const-string v0, "contents-id"

    invoke-interface {v13, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v0, "file-descriptor"

    invoke-interface {v13, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;

    invoke-static/range {p2 .. p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    const-string v1, "start-time-us"

    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v13, v1, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-string v1, "end-time-us"

    const-wide v5, 0x7fffffffffffffffL

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v13, v1, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v8, v1

    iget-object v7, v15, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

    new-instance v10, Lcom/samsung/android/sume/core/filter/MediaParserFilter$1;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sume/core/filter/MediaParserFilter$1;-><init>(Lcom/samsung/android/sume/core/filter/MediaParserFilter;ILjava/io/FileDescriptor;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    const/4 v1, 0x4

    invoke-interface {v7, v1, v10}, Lcom/samsung/android/sume/core/message/MessageProducer;->newMessage(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/message/Message;->post()Lcom/samsung/android/sume/core/message/Message;

    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v15, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->bitrate:I

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    iget-object v2, v15, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

    new-instance v5, Lcom/samsung/android/sume/core/filter/MediaParserFilter$2;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v7, v5

    move-wide/from16 v19, v8

    move-object/from16 v8, p0

    move v9, v3

    move-object v6, v14

    move-wide/from16 v13, v19

    :try_start_1
    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/sume/core/filter/MediaParserFilter$2;-><init>(Lcom/samsung/android/sume/core/filter/MediaParserFilter;IIJJ)V

    const/4 v7, 0x2

    invoke-interface {v2, v7, v5}, Lcom/samsung/android/sume/core/message/MessageProducer;->newMessage(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/message/Message;->post()Lcom/samsung/android/sume/core/message/Message;

    iget-object v2, v15, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

    new-instance v5, Lcom/samsung/android/sume/core/filter/MediaParserFilter$3;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v13, v5

    move-object/from16 v14, p0

    move-object v7, v15

    move v15, v3

    move/from16 v16, v10

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    :try_start_2
    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/sume/core/filter/MediaParserFilter$3;-><init>(Lcom/samsung/android/sume/core/filter/MediaParserFilter;IILcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)V

    const/4 v8, 0x7

    invoke-interface {v2, v8, v5}, Lcom/samsung/android/sume/core/message/MessageProducer;->newMessage(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/message/Message;->post()Lcom/samsung/android/sume/core/message/Message;

    invoke-virtual {v6, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v8, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda3;

    move-object v13, v8

    move-object/from16 v14, p0

    move-object v15, v6

    move-object/from16 v16, v0

    move/from16 v17, v3

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/filter/MediaParserFilter;Landroid/media/MediaExtractor;Ljava/io/FileDescriptor;ILjava/util/List;)V

    invoke-interface {v2, v8}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    invoke-static {v5, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda4;

    move-wide/from16 v8, v19

    invoke-direct {v5, v7, v6, v8, v9}, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sume/core/filter/MediaParserFilter;Landroid/media/MediaExtractor;J)V

    invoke-interface {v2, v5}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v7, v15

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v7, v15

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v6, v14

    move-object v7, v15

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v6, v14

    move-object v7, v15

    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_1
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    nop

    return-object p2

    :catchall_2
    move-exception v0

    :goto_2
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    throw v0
.end method

.method public blacklist setMessageProducer(Lcom/samsung/android/sume/core/message/MessageProducer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

    return-void
.end method

.method public blacklist setSendChannelQuery(Ljava/util/function/Function;I)V
    .locals 0
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

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->sendChannelQuery:Ljava/util/function/Function;

    iput p2, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->sendChannelCount:I

    return-void
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

    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
