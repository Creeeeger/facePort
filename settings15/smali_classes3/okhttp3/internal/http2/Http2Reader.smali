.class public final Lokhttp3/internal/http2/Http2Reader;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final logger:Ljava/util/logging/Logger;


# instance fields
.field public final client:Z

.field public final continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

.field public final hpackReader:Lokhttp3/internal/http2/Hpack$Reader;

.field public final source:Lokio/BufferedSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lokhttp3/internal/http2/Http2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lokio/BufferedSource;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    iput-boolean p2, p0, Lokhttp3/internal/http2/Http2Reader;->client:Z

    new-instance p2, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    invoke-direct {p2, p1}, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;-><init>(Lokio/BufferedSource;)V

    iput-object p2, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    new-instance p1, Lokhttp3/internal/http2/Hpack$Reader;

    invoke-direct {p1, p2}, Lokhttp3/internal/http2/Hpack$Reader;-><init>(Lokhttp3/internal/http2/Http2Reader$ContinuationSource;)V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->hpackReader:Lokhttp3/internal/http2/Hpack$Reader;

    return-void
.end method

.method public static lengthWithoutPadding(IBS)I
    .locals 0

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    if-gt p2, p0, :cond_1

    sub-int/2addr p0, p2

    int-to-short p0, p0

    return p0

    :cond_1
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "PROTOCOL_ERROR padding %s > remaining length %s"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static readMedium(Lokio/BufferedSource;)I
    .locals 2

    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final nextFrame(ZLokhttp3/internal/http2/Http2Connection$ReaderRunnable;)Z
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    const-wide/16 v2, 0x9

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-static {v1}, Lokhttp3/internal/http2/Http2Reader;->readMedium(Lokio/BufferedSource;)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_2a

    const/16 v3, 0x4000

    if-gt v1, v3, :cond_2a

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x4

    if-eqz p1, :cond_1

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Expected a SETTINGS frame but was %s"

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_1
    :goto_0
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {p1}, Lokio/BufferedSource;->readByte()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    iget-object v6, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->readInt()I

    move-result v6

    const v7, 0x7fffffff

    and-int/2addr v7, v6

    sget-object v8, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_2

    invoke-static {v10, v7, v1, v4, p1}, Lokhttp3/internal/http2/Http2;->frameLog(ZIIBB)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    const/4 v8, 0x5

    const/16 v9, 0x8

    packed-switch v4, :pswitch_data_0

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    int-to-long p1, v1

    invoke-interface {p0, p1, p2}, Lokio/BufferedSource;->skip(J)V

    goto/16 :goto_e

    :pswitch_0
    if-ne v1, v5, :cond_6

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/BufferedSource;->readInt()I

    move-result p0

    int-to-long p0, p0

    const-wide/32 v0, 0x7fffffff

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_5

    if-nez v7, :cond_3

    iget-object v0, p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v1

    :try_start_1
    iget-object p2, p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast p2, Lokhttp3/internal/http2/Http2Connection;

    iget-wide v2, p2, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    add-long/2addr v2, p0

    iput-wide v2, p2, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto/16 :goto_e

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    iget-object p2, p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast p2, Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p2, v7}, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object p2

    if-eqz p2, :cond_29

    monitor-enter p2

    :try_start_2
    iget-wide v1, p2, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    add-long/2addr v1, p0

    iput-wide v1, p2, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    if-lez v0, :cond_4

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    :cond_4
    monitor-exit p2

    goto/16 :goto_e

    :catchall_1
    move-exception p0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_5
    const-string/jumbo p2, "windowSizeIncrement was 0"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_6
    const-string p0, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :pswitch_1
    if-lt v1, v9, :cond_e

    if-nez v7, :cond_d

    iget-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {p1}, Lokio/BufferedSource;->readInt()I

    move-result p1

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    sub-int/2addr v1, v9

    invoke-static {}, Lokhttp3/internal/http2/ErrorCode;->values()[Lokhttp3/internal/http2/ErrorCode;

    move-result-object v4

    array-length v5, v4

    move v6, v0

    :goto_1
    if-ge v6, v5, :cond_8

    aget-object v7, v4, v6

    iget v8, v7, Lokhttp3/internal/http2/ErrorCode;->httpCode:I

    if-ne v8, v3, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    move-object v7, v2

    :goto_2
    if-eqz v7, :cond_c

    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    if-lez v1, :cond_9

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    int-to-long v1, v1

    invoke-interface {p0, v1, v2}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v2

    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lokio/ByteString;->getSize$okio()I

    iget-object p0, p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast p0, Lokhttp3/internal/http2/Http2Connection;

    monitor-enter p0

    :try_start_3
    iget-object v1, p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast v1, Lokhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast v2, Lokhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lokhttp3/internal/http2/Http2Stream;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lokhttp3/internal/http2/Http2Stream;

    iget-object v2, p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast v2, Lokhttp3/internal/http2/Http2Connection;

    iput-boolean v10, v2, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    array-length p0, v1

    :goto_3
    if-ge v0, p0, :cond_29

    aget-object v2, v1, v0

    iget v3, v2, Lokhttp3/internal/http2/Http2Stream;->id:I

    if-le v3, p1, :cond_b

    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    monitor-enter v2

    :try_start_4
    iget-object v4, v2, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-nez v4, :cond_a

    iput-object v3, v2, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_5

    :cond_a
    :goto_4
    monitor-exit v2

    iget-object v3, p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast v3, Lokhttp3/internal/http2/Http2Connection;

    iget v2, v2, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v3, v2}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    goto :goto_6

    :goto_5
    monitor-exit v2

    throw p0

    :cond_b
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catchall_3
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1

    :cond_c
    const-string p0, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_d
    const-string p0, "TYPE_GOAWAY streamId != 0"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_e
    const-string p0, "TYPE_GOAWAY length < 8: %s"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :pswitch_2
    if-ne v1, v9, :cond_12

    if-nez v7, :cond_11

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/BufferedSource;->readInt()I

    move-result p0

    and-int/2addr p1, v10

    if-eqz p1, :cond_f

    move p1, v10

    goto :goto_7

    :cond_f
    move p1, v0

    :goto_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_10

    iget-object p0, p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lokhttp3/internal/http2/Http2Connection;

    monitor-enter p1

    :try_start_6
    iget-object p0, p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast p0, Lokhttp3/internal/http2/Http2Connection;

    iput-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->awaitingPong:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    goto/16 :goto_e

    :catchall_4
    move-exception p0

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw p0

    :cond_10
    :try_start_7
    iget-object p1, p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast p1, Lokhttp3/internal/http2/Http2Connection;

    iget-object p2, p1, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lokhttp3/internal/http2/Http2Connection$PingRunnable;

    invoke-direct {v0, p1, v10, v1, p0}, Lokhttp3/internal/http2/Http2Connection$PingRunnable;-><init>(Lokhttp3/internal/http2/Http2Connection;ZII)V

    check-cast p2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_7
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_e

    :cond_11
    const-string p0, "TYPE_PING streamId != 0"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_12
    const-string p0, "TYPE_PING length != 8: %s"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :pswitch_3
    invoke-virtual {p0, p2, v1, p1, v7}, Lokhttp3/internal/http2/Http2Reader;->readPushPromise(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;IBI)V

    goto/16 :goto_e

    :pswitch_4
    if-nez v7, :cond_1f

    and-int/2addr p1, v10

    if-eqz p1, :cond_14

    if-nez v1, :cond_13

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_e

    :cond_13
    const-string p0, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_14
    rem-int/lit8 p1, v1, 0x6

    if-nez p1, :cond_1e

    new-instance p1, Lokhttp3/internal/http2/Settings;

    invoke-direct {p1}, Lokhttp3/internal/http2/Settings;-><init>()V

    move v4, v0

    :goto_8
    if-ge v4, v1, :cond_1d

    iget-object v6, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->readShort()S

    move-result v6

    const v7, 0xffff

    and-int/2addr v6, v7

    iget-object v7, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v7}, Lokio/BufferedSource;->readInt()I

    move-result v7

    const/4 v9, 0x2

    if-eq v6, v9, :cond_1a

    const/4 v9, 0x3

    if-eq v6, v9, :cond_19

    if-eq v6, v5, :cond_17

    if-eq v6, v8, :cond_15

    goto :goto_9

    :cond_15
    if-lt v7, v3, :cond_16

    const v9, 0xffffff

    if-gt v7, v9, :cond_16

    goto :goto_9

    :cond_16
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_17
    if-ltz v7, :cond_18

    const/4 v6, 0x7

    goto :goto_9

    :cond_18
    const-string p0, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_19
    move v6, v5

    goto :goto_9

    :cond_1a
    if-eqz v7, :cond_1c

    if-ne v7, v10, :cond_1b

    goto :goto_9

    :cond_1b
    const-string p0, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_1c
    :goto_9
    invoke-virtual {p1, v6, v7}, Lokhttp3/internal/http2/Settings;->set(II)V

    add-int/lit8 v4, v4, 0x6

    goto :goto_8

    :cond_1d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_8
    iget-object p0, p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast p0, Lokhttp3/internal/http2/Http2Connection;

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$2;

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v1, p2, p0, p1}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$2;-><init>(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;[Ljava/lang/Object;Lokhttp3/internal/http2/Settings;)V

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_e

    :cond_1e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_1f
    const-string p0, "TYPE_SETTINGS streamId != 0"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :pswitch_5
    if-ne v1, v5, :cond_26

    if-eqz v7, :cond_25

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/BufferedSource;->readInt()I

    move-result p0

    invoke-static {}, Lokhttp3/internal/http2/ErrorCode;->values()[Lokhttp3/internal/http2/ErrorCode;

    move-result-object p1

    array-length v1, p1

    :goto_a
    if-ge v0, v1, :cond_21

    aget-object v3, p1, v0

    iget v4, v3, Lokhttp3/internal/http2/ErrorCode;->httpCode:I

    if-ne v4, p0, :cond_20

    goto :goto_b

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_21
    move-object v3, v2

    :goto_b
    if-eqz v3, :cond_24

    iget-object p0, p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast p0, Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v7, :cond_22

    and-int/lit8 p0, v6, 0x1

    if-nez p0, :cond_22

    iget-object p0, p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast p0, Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lokhttp3/internal/http2/Http2Connection$3;

    iget-object p2, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p0, p2, v7, v3}, Lokhttp3/internal/http2/Http2Connection$3;-><init>(Lokhttp3/internal/http2/Http2Connection;[Ljava/lang/Object;ILokhttp3/internal/http2/ErrorCode;)V

    invoke-virtual {p0, p1}, Lokhttp3/internal/http2/Http2Connection;->pushExecutorExecute(Lokhttp3/internal/NamedRunnable;)V

    goto :goto_e

    :cond_22
    iget-object p0, p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast p0, Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p0, v7}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object p0

    if-eqz p0, :cond_29

    monitor-enter p0

    :try_start_9
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-nez p1, :cond_23

    iput-object v3, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_c

    :catchall_5
    move-exception p1

    goto :goto_d

    :cond_23
    :goto_c
    monitor-exit p0

    goto :goto_e

    :goto_d
    monitor-exit p0

    throw p1

    :cond_24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_25
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "TYPE_RST_STREAM streamId == 0"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :pswitch_6
    if-ne v1, v8, :cond_28

    if-eqz v7, :cond_27

    iget-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {p1}, Lokio/BufferedSource;->readInt()I

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_e

    :cond_27
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "TYPE_PRIORITY streamId == 0"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TYPE_PRIORITY length: %d != 5"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :pswitch_7
    invoke-virtual {p0, p2, v1, p1, v7}, Lokhttp3/internal/http2/Http2Reader;->readHeaders(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;IBI)V

    goto :goto_e

    :pswitch_8
    invoke-virtual {p0, p2, v1, p1, v7}, Lokhttp3/internal/http2/Http2Reader;->readData(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;IBI)V

    :catch_0
    :cond_29
    :goto_e
    return v10

    :cond_2a
    const-string p0, "FRAME_SIZE_ERROR: %s"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :catch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readConnectionPreface(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;)V
    .locals 5

    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Reader;->client:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lokhttp3/internal/http2/Http2Reader;->nextFrame(ZLokhttp3/internal/http2/Http2Connection$ReaderRunnable;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Required SETTINGS preface not received"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_1
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    sget-object p1, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->getSize$okio()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p0, v2, v3}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object p0

    sget-object v0, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<< CONNECTION "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, p0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Expected a connection header but was %s"

    invoke-static {p1, p0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public final readData(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;IBI)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v4, p4

    const/4 v3, 0x0

    const/4 v5, 0x0

    if-eqz v4, :cond_10

    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    move v8, v5

    :goto_0
    and-int/lit8 v6, v2, 0x20

    if-nez v6, :cond_f

    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_1

    iget-object v3, v0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    move v9, v3

    move/from16 v3, p2

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    move v9, v5

    :goto_1
    invoke-static {v3, v2, v9}, Lokhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I

    move-result v6

    iget-object v2, v0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    iget-object v3, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast v3, Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_3

    and-int/lit8 v3, v4, 0x1

    if-nez v3, :cond_3

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    move-object v10, v1

    check-cast v10, Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    int-to-long v11, v6

    invoke-interface {v2, v11, v12}, Lokio/BufferedSource;->require(J)V

    invoke-interface {v2, v5, v11, v12}, Lokio/Source;->read(Lokio/Buffer;J)J

    iget-wide v1, v5, Lokio/Buffer;->size:J

    cmp-long v1, v1, v11

    if-nez v1, :cond_2

    new-instance v11, Lokhttp3/internal/http2/Http2Connection$5;

    iget-object v1, v10, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v3

    move-object v1, v11

    move-object v2, v10

    move/from16 v4, p4

    move v7, v8

    invoke-direct/range {v1 .. v7}, Lokhttp3/internal/http2/Http2Connection$5;-><init>(Lokhttp3/internal/http2/Http2Connection;[Ljava/lang/Object;ILokio/Buffer;IZ)V

    invoke-virtual {v10, v11}, Lokhttp3/internal/http2/Http2Connection;->pushExecutorExecute(Lokhttp3/internal/NamedRunnable;)V

    goto/16 :goto_8

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v5, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v3, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast v3, Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v3, v4}, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v3, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast v3, Lokhttp3/internal/http2/Http2Connection;

    sget-object v5, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v3, v4, v5}, Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILokhttp3/internal/http2/ErrorCode;)V

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast v1, Lokhttp3/internal/http2/Http2Connection;

    int-to-long v3, v6

    invoke-virtual {v1, v3, v4}, Lokhttp3/internal/http2/Http2Connection;->updateConnectionFlowControl(J)V

    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->skip(J)V

    goto/16 :goto_8

    :cond_4
    iget-object v1, v3, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    int-to-long v10, v6

    :goto_2
    const-wide/16 v12, 0x0

    cmp-long v4, v10, v12

    if-lez v4, :cond_d

    iget-object v4, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v4

    :try_start_0
    iget-boolean v6, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    iget-object v14, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    iget-wide v14, v14, Lokio/Buffer;->size:J

    add-long/2addr v14, v10

    move/from16 v16, v8

    iget-wide v7, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    cmp-long v7, v14, v7

    if-lez v7, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    move v7, v5

    :goto_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_6

    invoke-interface {v2, v10, v11}, Lokio/BufferedSource;->skip(J)V

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2}, Lokhttp3/internal/http2/Http2Stream;->closeLater(Lokhttp3/internal/http2/ErrorCode;)V

    goto :goto_7

    :cond_6
    if-eqz v6, :cond_7

    invoke-interface {v2, v10, v11}, Lokio/BufferedSource;->skip(J)V

    goto :goto_7

    :cond_7
    iget-object v4, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    invoke-interface {v2, v4, v10, v11}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v6

    const-wide/16 v14, -0x1

    cmp-long v4, v6, v14

    if-eqz v4, :cond_c

    sub-long/2addr v10, v6

    iget-object v4, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v4

    :try_start_1
    iget-boolean v6, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v6, :cond_8

    iget-object v6, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    iget-wide v7, v6, Lokio/Buffer;->size:J

    invoke-virtual {v6}, Lokio/Buffer;->clear()V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_8
    iget-object v6, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    iget-wide v7, v6, Lokio/Buffer;->size:J

    cmp-long v7, v7, v12

    if-nez v7, :cond_9

    const/4 v7, 0x1

    goto :goto_4

    :cond_9
    move v7, v5

    :goto_4
    iget-object v8, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    invoke-virtual {v6, v8}, Lokio/Buffer;->writeAll(Lokio/Source;)V

    if-eqz v7, :cond_a

    iget-object v6, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    :cond_a
    move-wide v7, v12

    :goto_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v4, v7, v12

    if-lez v4, :cond_b

    iget-object v4, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v4, v7, v8}, Lokhttp3/internal/http2/Http2Connection;->updateConnectionFlowControl(J)V

    :cond_b
    move/from16 v8, v16

    goto :goto_2

    :goto_6
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_c
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_d
    move/from16 v16, v8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_7
    if-eqz v16, :cond_e

    sget-object v1, Lokhttp3/internal/Util;->EMPTY_HEADERS:Lokhttp3/Headers;

    const/4 v2, 0x1

    invoke-virtual {v3, v1, v2}, Lokhttp3/internal/http2/Http2Stream;->receiveHeaders(Lokhttp3/Headers;Z)V

    :cond_e
    :goto_8
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    int-to-long v1, v9

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->skip(J)V

    return-void

    :cond_f
    const-string v0, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_10
    const-string v0, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3
.end method

.method public final readHeaderBlock(ISBI)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    iput p1, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I

    iput p1, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->length:I

    iput-short p2, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->padding:S

    iput-byte p3, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->flags:B

    iput p4, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->streamId:I

    iget-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->hpackReader:Lokhttp3/internal/http2/Hpack$Reader;

    :cond_0
    :goto_0
    iget-object p2, p1, Lokhttp3/internal/http2/Hpack$Reader;->source:Lokio/RealBufferedSource;

    invoke-virtual {p2}, Lokio/RealBufferedSource;->exhausted()Z

    move-result p3

    if-nez p3, :cond_c

    invoke-virtual {p2}, Lokio/RealBufferedSource;->readByte()B

    move-result p2

    and-int/lit16 p3, p2, 0xff

    const/16 p4, 0x80

    if-eq p3, p4, :cond_b

    and-int/lit16 v0, p2, 0x80

    if-ne v0, p4, :cond_3

    const/16 p2, 0x7f

    invoke-virtual {p1, p3, p2}, Lokhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result p2

    add-int/lit8 p3, p2, -0x1

    if-ltz p3, :cond_1

    sget-object p4, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    if-gt p3, v0, :cond_1

    aget-object p2, p4, p3

    iget-object p3, p1, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object p4, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    array-length p4, p4

    sub-int/2addr p3, p4

    iget p4, p1, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    add-int/lit8 p4, p4, 0x1

    add-int/2addr p4, p3

    if-ltz p4, :cond_2

    iget-object p3, p1, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v0, p3

    if-ge p4, v0, :cond_2

    iget-object p2, p1, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    aget-object p3, p3, p4

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Header index too large "

    invoke-static {p2, p1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/16 p4, 0x40

    if-ne p3, p4, :cond_4

    invoke-virtual {p1}, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object p2

    invoke-static {p2}, Lokhttp3/internal/http2/Hpack;->checkLowercase(Lokio/ByteString;)V

    invoke-virtual {p1}, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object p3

    new-instance p4, Lokhttp3/internal/http2/Header;

    invoke-direct {p4, p2, p3}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-virtual {p1, p4}, Lokhttp3/internal/http2/Hpack$Reader;->insertIntoDynamicTable(Lokhttp3/internal/http2/Header;)V

    goto :goto_0

    :cond_4
    and-int/lit8 v0, p2, 0x40

    if-ne v0, p4, :cond_5

    const/16 p2, 0x3f

    invoke-virtual {p1, p3, p2}, Lokhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/Hpack$Reader;->getName(I)Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1}, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object p3

    new-instance p4, Lokhttp3/internal/http2/Header;

    invoke-direct {p4, p2, p3}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-virtual {p1, p4}, Lokhttp3/internal/http2/Hpack$Reader;->insertIntoDynamicTable(Lokhttp3/internal/http2/Header;)V

    goto/16 :goto_0

    :cond_5
    and-int/lit8 p2, p2, 0x20

    const/16 p4, 0x20

    if-ne p2, p4, :cond_8

    const/16 p2, 0x1f

    invoke-virtual {p1, p3, p2}, Lokhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result p2

    iput p2, p1, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    if-ltz p2, :cond_7

    iget p3, p1, Lokhttp3/internal/http2/Hpack$Reader;->headerTableSizeSetting:I

    if-gt p2, p3, :cond_7

    iget p3, p1, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    if-ge p2, p3, :cond_0

    if-nez p2, :cond_6

    iget-object p2, p1, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p1, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    const/4 p2, 0x0

    iput p2, p1, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I

    iput p2, p1, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    goto/16 :goto_0

    :cond_6
    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lokhttp3/internal/http2/Hpack$Reader;->evictToRecoverBytes(I)I

    goto/16 :goto_0

    :cond_7
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid dynamic table size update "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    const/16 p2, 0x10

    if-eq p3, p2, :cond_a

    if-nez p3, :cond_9

    goto :goto_1

    :cond_9
    const/16 p2, 0xf

    invoke-virtual {p1, p3, p2}, Lokhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/Hpack$Reader;->getName(I)Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1}, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object p3

    iget-object p4, p1, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    new-instance v0, Lokhttp3/internal/http2/Header;

    invoke-direct {v0, p2, p3}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    :goto_1
    invoke-virtual {p1}, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object p2

    invoke-static {p2}, Lokhttp3/internal/http2/Hpack;->checkLowercase(Lokio/ByteString;)V

    invoke-virtual {p1}, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object p3

    iget-object p4, p1, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    new-instance v0, Lokhttp3/internal/http2/Header;

    invoke-direct {v0, p2, p3}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "index == 0"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->hpackReader:Lokhttp3/internal/http2/Hpack$Reader;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-object p1
.end method

.method public final readHeaders(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;IBI)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p4, :cond_8

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_1

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_1
    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_2

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p2, p2, -0x5

    :cond_2
    invoke-static {p2, p3, v0}, Lokhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I

    move-result p2

    invoke-virtual {p0, p2, v0, p3, p4}, Lokhttp3/internal/http2/Http2Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v6

    iget-object p0, p1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast p0, Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p4, :cond_3

    and-int/lit8 p0, p4, 0x1

    if-nez p0, :cond_3

    iget-object p0, p1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast p0, Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance p1, Lokhttp3/internal/http2/Http2Connection$3;

    iget-object p2, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object v4

    move-object v2, p1

    move-object v3, p0

    move v5, p4

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/http2/Http2Connection$3;-><init>(Lokhttp3/internal/http2/Http2Connection;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-virtual {p0, p1}, Lokhttp3/internal/http2/Http2Connection;->pushExecutorExecute(Lokhttp3/internal/NamedRunnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :cond_3
    iget-object p0, p1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast p0, Lokhttp3/internal/http2/Http2Connection;

    monitor-enter p0

    :try_start_1
    iget-object p2, p1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast p2, Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p2, p4}, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object p2

    if-nez p2, :cond_7

    iget-object p2, p1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast p2, Lokhttp3/internal/http2/Http2Connection;

    iget-boolean p3, p2, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-eqz p3, :cond_4

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_4
    iget p3, p2, Lokhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    if-gt p4, p3, :cond_5

    monitor-exit p0

    goto :goto_1

    :cond_5
    rem-int/lit8 p3, p4, 0x2

    iget p2, p2, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    rem-int/lit8 p2, p2, 0x2

    if-ne p3, p2, :cond_6

    monitor-exit p0

    goto :goto_1

    :cond_6
    invoke-static {v6}, Lokhttp3/internal/Util;->toHeaders(Ljava/util/List;)Lokhttp3/Headers;

    move-result-object v7

    new-instance p2, Lokhttp3/internal/http2/Http2Stream;

    iget-object p3, p1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    move-object v4, p3

    check-cast v4, Lokhttp3/internal/http2/Http2Connection;

    const/4 v5, 0x0

    move-object v2, p2

    move v3, p4

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/http2/Http2Stream;-><init>(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V

    iget-object p3, p1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast p3, Lokhttp3/internal/http2/Http2Connection;

    iput p4, p3, Lokhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    iget-object p3, p3, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p3, Lokhttp3/internal/http2/Http2Connection;->listenerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v1, p1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast v1, Lokhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {v1, p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-direct {v0, p1, p4, p2}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;[Ljava/lang/Object;Lokhttp3/internal/http2/Http2Stream;)V

    check-cast p3, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p3, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    monitor-exit p0

    goto :goto_1

    :cond_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lokhttp3/internal/Util;->toHeaders(Ljava/util/List;)Lokhttp3/Headers;

    move-result-object p0

    invoke-virtual {p2, p0, v1}, Lokhttp3/internal/http2/Http2Stream;->receiveHeaders(Lokhttp3/Headers;Z)V

    :catch_0
    :goto_1
    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_8
    const-string p0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final readPushPromise(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;IBI)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_0

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_0
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x4

    invoke-static {p2, p3, v0}, Lokhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I

    move-result p2

    invoke-virtual {p0, p2, v0, p3, p4}, Lokhttp3/internal/http2/Http2Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object p0

    iget-object p1, p1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast p1, Lokhttp3/internal/http2/Http2Connection;

    monitor-enter p1

    :try_start_0
    iget-object p2, p1, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, v1, p0}, Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILokhttp3/internal/http2/ErrorCode;)V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object p2, p1, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance p2, Lokhttp3/internal/http2/Http2Connection$3;

    iget-object p3, p1, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p3, p4}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p2, p1, p3, v1, p0}, Lokhttp3/internal/http2/Http2Connection$3;-><init>(Lokhttp3/internal/http2/Http2Connection;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/Http2Connection;->pushExecutorExecute(Lokhttp3/internal/NamedRunnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    return-void

    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    const-string p0, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
