.class public final Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$execute$1;
.super Lokhttp3/internal/concurrent/Task;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $clearPrevious$inlined:Z

.field public final synthetic $settings$inlined:Lokhttp3/internal/http2/Settings;

.field public final synthetic this$0:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/internal/http2/Http2Connection$ReaderRunnable;ZLokhttp3/internal/http2/Settings;)V
    .locals 0

    iput-object p5, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$execute$1;->this$0:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iput-boolean p6, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$execute$1;->$clearPrevious$inlined:Z

    iput-object p7, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$execute$1;->$settings$inlined:Lokhttp3/internal/http2/Settings;

    invoke-direct {p0, p3, p4}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final runOnce()J
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-object v13, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$execute$1;->this$0:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-boolean v9, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$execute$1;->$clearPrevious$inlined:Z

    iget-object v10, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$execute$1;->$settings$inlined:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v2, v13, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v12, v2, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    monitor-enter v12

    :try_start_0
    iget-object v11, v13, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    iget-object v2, v13, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    const/4 v8, 0x0

    if-eqz v9, :cond_0

    move-object v3, v10

    goto :goto_3

    :cond_0
    new-instance v3, Lokhttp3/internal/http2/Settings;

    invoke-direct {v3}, Lokhttp3/internal/http2/Settings;-><init>()V

    move v4, v8

    :goto_0
    const/16 v5, 0xa

    if-ge v4, v5, :cond_2

    shl-int v5, v1, v4

    iget v6, v2, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    iget-object v5, v2, Lokhttp3/internal/http2/Settings;->values:[I

    aget v5, v5, v4

    invoke-virtual {v3, v4, v5}, Lokhttp3/internal/http2/Settings;->set(II)V

    :cond_1
    add-int/2addr v4, v1

    goto :goto_0

    :goto_1
    move-object/from16 v17, v11

    move-object/from16 v19, v12

    goto/16 :goto_8

    :cond_2
    move v4, v8

    :goto_2
    if-ge v4, v5, :cond_4

    shl-int v6, v1, v4

    iget v7, v10, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    iget-object v6, v10, Lokhttp3/internal/http2/Settings;->values:[I

    aget v6, v6, v4

    invoke-virtual {v3, v4, v6}, Lokhttp3/internal/http2/Settings;->set(II)V

    :cond_3
    add-int/2addr v4, v1

    goto :goto_2

    :cond_4
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_3
    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v3}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v2

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, v14, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide/16 v6, 0x0

    cmp-long v2, v3, v6

    if-eqz v2, :cond_7

    iget-object v2, v13, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    iget-object v2, v13, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-array v3, v8, [Lokhttp3/internal/http2/Http2Stream;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    check-cast v2, [Lokhttp3/internal/http2/Http2Stream;

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_4
    const/4 v2, 0x0

    :goto_5
    iput-object v2, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v2, v13, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lokhttp3/internal/http2/Settings;

    iput-object v3, v2, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    iget-object v5, v2, Lokhttp3/internal/http2/Http2Connection;->settingsListenerQueue:Lokhttp3/internal/concurrent/TaskQueue;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v13, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " onSettings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v4, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$applyAndAckSettings$$inlined$synchronized$lambda$1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v17, 0x1

    move-object v2, v4

    move-object/from16 v3, v16

    move-object v1, v4

    move/from16 v4, v17

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move/from16 v6, v17

    move-object v7, v13

    move/from16 v16, v8

    move-object v8, v0

    move-object/from16 v17, v11

    move-object v11, v14

    move-object/from16 v19, v12

    move-object v12, v15

    :try_start_2
    invoke-direct/range {v2 .. v12}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$applyAndAckSettings$$inlined$synchronized$lambda$1;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/internal/http2/Http2Connection$ReaderRunnable;Lkotlin/jvm/internal/Ref$ObjectRef;ZLokhttp3/internal/http2/Settings;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object/from16 v4, v18

    const-wide/16 v2, 0x0

    invoke-virtual {v4, v1, v2, v3}, Lokhttp3/internal/concurrent/TaskQueue;->schedule(Lokhttp3/internal/concurrent/Task;J)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, v13, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lokhttp3/internal/http2/Settings;

    invoke-virtual {v1, v0}, Lokhttp3/internal/http2/Http2Writer;->applyAndAckSettings(Lokhttp3/internal/http2/Settings;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_0
    move-exception v0

    :try_start_5
    iget-object v1, v13, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, v0}, Lokhttp3/internal/http2/Http2Connection;->failConnection(Ljava/io/IOException;)V

    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v19

    iget-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, [Lokhttp3/internal/http2/Http2Stream;

    if-eqz v0, :cond_9

    array-length v1, v0

    move/from16 v8, v16

    :goto_7
    if-ge v8, v1, :cond_9

    aget-object v4, v0, v8

    monitor-enter v4

    :try_start_6
    iget-wide v5, v14, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v9, v4, Lokhttp3/internal/http2/Http2Stream;->writeBytesMaximum:J

    add-long/2addr v9, v5

    iput-wide v9, v4, Lokhttp3/internal/http2/Http2Stream;->writeBytesMaximum:J

    cmp-long v5, v5, v2

    if-lez v5, :cond_8

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    :cond_8
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit v4

    const/4 v5, 0x1

    add-int/2addr v8, v5

    goto :goto_7

    :catchall_2
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_9
    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_3
    move-exception v0

    :goto_8
    :try_start_7
    monitor-exit v17

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_4
    move-exception v0

    move-object/from16 v19, v12

    :goto_9
    monitor-exit v19

    throw v0
.end method
