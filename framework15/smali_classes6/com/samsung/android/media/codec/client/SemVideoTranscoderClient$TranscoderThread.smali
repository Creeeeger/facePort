.class Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;
.super Ljava/lang/Thread;
.source "SemVideoTranscoderClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranscoderThread"
.end annotation


# static fields
.field private static final blacklist THREAD_PREFIX:Ljava/lang/String; = "transcoder"


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transcoder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 20

    move-object/from16 v1, p0

    const-string v2, "Task("

    const-string v0, "]"

    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is running"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemVideoTranscodingService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v5, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-object v5, v5, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mArgs:Ljava/util/Map;

    const-string v6, "input-path"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-object v6, v6, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mArgs:Ljava/util/Map;

    const-string v7, "output-path"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V

    invoke-virtual {v7, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v8, 0x12

    invoke-virtual {v7, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x13

    invoke-virtual {v7, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x24

    invoke-virtual {v7, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x403

    invoke-virtual {v7, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x404

    invoke-virtual {v7, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x3fe

    invoke-virtual {v7, v14}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    METADATA_KEY_VIDEO_WIDTH["

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    METADATA_KEY_VIDEO_HEIGHT["

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    METADATA_KEY_COLOR_TRANSFER["

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    SEM_METADATA_KEY_HDR10_VIDEO["

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    SEM_METADATA_KEY_VIDEO_BIT_DEPTH["

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    SEM_METADATA_KEY_RECORDINGMODE["

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v15, 0x0

    const/16 v16, 0x4

    const/4 v9, 0x2

    move-object/from16 v18, v7

    iget-object v7, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget v7, v7, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mMode:I

    move-object/from16 v19, v8

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->-$$Nest$smisSupportedHdrToSdr()Z

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_1

    :cond_0
    if-nez v11, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x7

    if-eq v7, v8, :cond_2

    goto/16 :goto_1

    :cond_2
    const/4 v15, 0x1

    move/from16 v7, v16

    goto/16 :goto_2

    :pswitch_1
    if-nez v14, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    const/16 v8, 0xc

    if-eq v7, v8, :cond_4

    const/16 v8, 0xd

    if-eq v7, v8, :cond_4

    const/16 v8, 0xf

    if-eq v7, v8, :cond_4

    const/16 v8, 0x13

    if-eq v7, v8, :cond_4

    const/16 v8, 0x15

    if-eq v7, v8, :cond_4

    goto :goto_1

    :cond_4
    const/16 v8, 0x15

    if-ne v7, v8, :cond_5

    const/16 v16, 0x5

    :cond_5
    const/4 v15, 0x1

    move/from16 v7, v16

    goto :goto_2

    :pswitch_2
    invoke-static {}, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->-$$Nest$smisSupportedHdrToSdr()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_1

    :cond_6
    if-eqz v12, :cond_9

    if-nez v13, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "yes"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/16 v8, 0x8

    if-gt v7, v8, :cond_8

    goto :goto_1

    :cond_8
    const/4 v15, 0x1

    move/from16 v7, v16

    goto :goto_2

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported mode ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget v8, v8, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_1
    move/from16 v7, v16

    :goto_2
    if-eqz v15, :cond_c

    iget-object v8, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    invoke-static {v8}, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->-$$Nest$fgetmTranscoder(Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;)Lcom/samsung/android/media/codec/SemVideoTranscoder;

    move-result-object v8

    invoke-virtual {v8, v6, v0, v3, v5}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->initialize(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v8, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    invoke-static {v8}, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->-$$Nest$fgetmTranscoder(Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;)Lcom/samsung/android/media/codec/SemVideoTranscoder;

    move-result-object v8

    move/from16 v16, v0

    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-object v0, v0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mProgressCallback:Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    invoke-virtual {v8, v0}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->setVideoTranscodingServiceCallback(Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)V

    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    invoke-static {v0}, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->-$$Nest$fgetmTranscoder(Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;)Lcom/samsung/android/media/codec/SemVideoTranscoder;

    move-result-object v0

    const/4 v8, 0x1

    invoke-virtual {v0, v8, v7}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->setOutputConfig(II)V

    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    invoke-static {v0}, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->-$$Nest$fgetmTranscoder(Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;)Lcom/samsung/android/media/codec/SemVideoTranscoder;

    move-result-object v0

    const/4 v8, 0x2

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->setOutputConfig(II)V

    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget v0, v0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mMode:I

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget v0, v0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mMode:I

    if-ne v0, v8, :cond_a

    goto :goto_3

    :cond_a
    move/from16 v17, v3

    goto :goto_4

    :cond_b
    :goto_3
    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    invoke-static {v0}, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->-$$Nest$fgetmTranscoder(Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;)Lcom/samsung/android/media/codec/SemVideoTranscoder;

    move-result-object v0

    const/4 v8, 0x4

    move/from16 v17, v3

    const/16 v3, 0x8

    invoke-virtual {v0, v8, v3}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->setOutputConfig(II)V

    :goto_4
    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mIsRunning:Z

    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    invoke-static {v0}, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->-$$Nest$fgetmTranscoder(Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;)Lcom/samsung/android/media/codec/SemVideoTranscoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->encode()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-object v3, v3, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") has been finished"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_c
    move/from16 v16, v0

    move/from16 v17, v3

    const-string v0, "Invalid argument"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-object v0, v0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mProgressCallback:Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    invoke-virtual {v0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->onError()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_5
    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mIsRunning:Z

    :try_start_1
    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-object v0, v0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mTranscodingService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    iget-object v2, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-object v2, v2, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mID:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/samsung/android/media/codec/IVideoTranscodingService;->stopTask(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_9

    :catch_0
    move-exception v0

    move-object v3, v0

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-object v2, v2, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") has been terminated unexpectedly"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-boolean v0, v0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mIgnoreError:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client has stopped "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-object v2, v2, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Ignore this error."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :cond_d
    :try_start_3
    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-object v0, v0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mProgressCallback:Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    invoke-virtual {v0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->onError()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mIsRunning:Z

    :try_start_5
    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-object v0, v0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mTranscodingService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    iget-object v2, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-object v2, v2, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mID:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/samsung/android/media/codec/IVideoTranscodingService;->stopTask(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_7
    goto :goto_8

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    nop

    :goto_8
    return-void

    :goto_9
    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mIsRunning:Z

    :try_start_6
    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-object v0, v0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mTranscodingService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    iget-object v3, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-object v3, v3, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mID:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/samsung/android/media/codec/IVideoTranscodingService;->stopTask(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_a
    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
